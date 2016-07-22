require 'game'
require 'player'

describe Game do

  let(:player1){double :player1}
  let(:player2){double :player2}
  subject { described_class.new(player1, player2) }

describe '#initialize' do
  it 'is player 1s turn' do
    expect(subject.current_turn).to eq player1
  end

  it 'has two players' do
    expect(subject.player1).to eq player1
    expect(subject.player2).to eq player2
  end
end

  describe '#attack' do
    it 'attacks player 2' do
      expect(subject.player2).to receive(:receive_damage)
      subject.attack(player2)
    end

    it 'changes turn' do
      subject.switch_turn(player1)
      expect(subject.current_turn).to eq player2
    end
  end

  describe 'game _over?' do
    it 'returns true if losing_players is not empty' do
      allow(subject).to receive(:losing_players).and_return([player1])
      expect(subject.game_over?).to eq true
    end
    it 'returns false if losing_players is empty' do
      allow(subject).to receive(:losing_players).and_return([])
      expect(subject.game_over?).to eq false
    end
  end

end
