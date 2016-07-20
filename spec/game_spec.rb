require 'game'
require 'player'

describe Game do

  subject { described_class.new("Luke", "Jess") }

  let(:player1){ Player.new("Luke") }
  let(:player2) { Player.new("Jess") }


  it 'has two players' do
    expect(subject.player1.name).to eq "Luke"
    expect(subject.player2.name).to eq "Jess"
  end


  describe '#attack' do
    it 'attacks player 2' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end

end
