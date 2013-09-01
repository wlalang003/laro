class Projectile < Chingu::GameObject
  def initialize(options = {})
  super(options.merge(:image => Image["images/rocket.png"], :zorder => 0))
    p "fire"
  end
  
  def update
    @y -= 20
  end
end