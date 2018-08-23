describe Game do

  let(:samir) { double :samir }
  let(:karho) { double :karho }
  subject(:game) { Game.new(samir, karho) }

  describe '#attack' do
    it "damages the opponent" do
      expect(samir).to receive(:take_damage)
      game.attack(samir)
    end
  end

  describe '#initalizes' do
    it 'knows its players' do
      expect(Game).to respond_to(:new).with(2).arguments
    end
  end
end
