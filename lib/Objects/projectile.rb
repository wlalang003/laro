class Projectile < Chingu::GameObject
  def initialize(options = {})
    super(options.merge(:zorder => 0))
  end
  
  def update
    self.destroy if @y < -20
    @y -= 30
  end
end