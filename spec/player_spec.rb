require 'player'

describe 'Player' do

  subject(:chuck) {Player.new('Chuck')}

  describe "#name" do
    it 'returns the name' do
     expect(chuck.name).to eq "Chuck"
    end
  end

end
