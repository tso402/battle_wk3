class Player

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def take_damage
    @hit_points -= 10
  end
end
