class Player
DEFAULT_HP = 100
DEFAULT_DAMAGE = 10
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= DEFAULT_DAMAGE
  end

end
