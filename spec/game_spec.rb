require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:chuck) { double :player }
  let(:wayne) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(wayne).to receive(:receive_damage)
      game.attack(wayne)
    end
  end

end
