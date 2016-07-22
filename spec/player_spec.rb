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

  describe '#receive_damage' do
    it 'receives damage' do
      allow(Kernel).to receive(:rand).and_return(15)
      expect{player2.receive_damage}.to change{player2.hitpoints}.by(-15)
    end
  end

end
