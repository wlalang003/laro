class Projectile
  def initialize(ship)
    @image = Gosu::Image.new(ship.window, "images/rocket.png", true)
    @x = 20
    @y = 20
    p "initialize"
  end
  
  def draw
    @image.draw(@x, @y, 1)
  end
end