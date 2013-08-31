class Ship
  attr_accessor :x, :y
  
  def initialize(window)
    @window = window
    @image = Gosu::Image.new(window, "images/ship.png", true)
    @x = @vel_x = @vel_y = @angle = 0.0
    @y = window.height - @image.height
    @rocket_fired = false
  end
  
  def move_left
    @x -= 5
  end
  
  def move_right
    @x += 5
  end
  def window
    @window
  end
  def draw
    @image.draw(@x,@y,0)
    @projectile.draw if !@projectile.nil?
    
  end
  
  def generate_rocket
    @projectile = Projectile.new(self)
  end
end