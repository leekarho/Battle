class Game

attr_reader :player1, :player2

  def initialize(p1 = Player.new, p2 = Player.new)
    # don't need defaults as params always feed names
    @player1 = p1
    @player2 = p2
  end

  def attack(enemy)
    enemy.take_damage
  end

end
