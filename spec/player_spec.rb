describe Player do

  subject(:samir) { Player.new('samir') }
  subject(:karho) { Player.new('kar-ho') }

  describe '#name' do
    it "returns player's name" do
      expect(samir.name).to eq "samir"
    end
  end

  describe '#hp' do
    it "returns player's hp" do
      expect(samir.hp).to eq 100
    end
  end


  describe '#take_damage' do
    it "reduces player hp" do
      expect(samir.take_damage).to eq 90
    end
  end

end
