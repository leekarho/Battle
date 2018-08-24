class Game

attr_reader :player1, :player2, :current_turn

  def initialize(p1 = Player.new, p2 = Player.new)
    @player1 = p1
    @player2 = p2
    @current_turn = @player1
  end

  def attack(enemy)
    enemy.take_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    the_player == @player1 ? @player2 : @player1
  end

end
