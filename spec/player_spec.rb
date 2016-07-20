require 'player'

describe Player do
  subject(:player1){ described_class.new("Luke") }
  subject(:player2) {described_class.new("Jess")}

  describe '#name' do
    it 'has a name' do
      expect(player1.name).to eq "Luke"
    end
  end

  describe '#hitpoints' do
    it 'has hitpoints' do
      expect(player1.hitpoints).to eq 100
    end
  end

  describe '#attack' do
    it 'attacks player 2' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'receives damage' do
      player2.receive_damage
      expect(player2.hitpoints).to eq 90
    end
  end

end
