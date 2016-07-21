class Player

DEFAULT_HITPOINTS = 100

attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end

  def random_num
    rand(20)
  end

  def receive_damage
    @hitpoints -= random_num
  end

end
