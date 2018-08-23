describe Game do

  let(:samir) { double :samir }
  let(:karho) { double :karho }
  subject(:game) { Game.new }

  describe '#attack' do
    it "damages the opponent" do
      expect(samir).to receive(:take_damage)
      game.attack(samir)
    end
  end
end
