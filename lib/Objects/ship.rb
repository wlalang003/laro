class Ship < Chingu::GameObject  
  def initialize(options = {})
    super
    @image = Image["images/ship.png"]
    @x = $window.width / 2
    @y = $window.height - @image.height / 2
    @rocket_fired = false
  end
  
  #MOVEMENT
  def move_left; @x -= 4; end
  def move_right; @x += 4; end
  def move_up; @y -= 4; end
  def move_down; @y += 4; end
  
  def fire
    Projectile.create(:x => @x, :y => @y)
  end
end