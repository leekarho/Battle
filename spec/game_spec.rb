describe Game do

  subject(:game) { Game.new(samir, karho) }
  let(:samir) { double :samir }
  let(:karho) { double :karho }

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

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq karho
    end
  end

end
