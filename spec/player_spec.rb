require 'player'

describe Player do

  subject(:chuck) {Player.new('Chuck')}
  subject(:wayne) {Player.new('Wayne')}

  describe "#name" do
    it 'returns the name' do
     expect(chuck.name).to eq "Chuck"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(chuck.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#recieve_damage' do
    it 'reduces the player hit points' do
      expect {chuck.receive_damage}.to change {chuck.hit_points}.by(-10)
    end
  end
end
