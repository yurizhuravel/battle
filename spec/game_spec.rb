require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#player_1' do
    it 'stores the name of player_1' do
     expect(game.players[0]).to eq player_1
    end
  end
  describe '#player_2' do
    it 'stores the name of player_2' do
      expect(game.players[1]).to eq player_2
    end
  end

  describe '#change_turn' do
    it "changes turns between players" do
      expect{game.change_turn}.to change{game.players[0]}.from(player_1).to(player_2)
    end
  end

  describe '#whos_turn' do
    it "returns player 1's name when @player_1_turn is true" do
      allow(player_1).to receive(:name).and_return(player_1)
      expect(game.whos_turn).to eq player_1
    end
    it "returns player 2's name when @player_1_turn is false" do
      game.change_turn
      allow(player_2).to receive(:name).and_return(player_2)
      expect(game.whos_turn).to eq player_2
    end
  end

end
