require 'game'
require 'player'

describe Game do

  subject { described_class.new }

  let(:player1){ Player.new("Luke") }
  let(:player2) { Player.new("Jess")}

  describe '#attack' do
    it 'attacks player 2' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end

end
