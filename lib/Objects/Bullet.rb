class Bullet < Projectile
  def initialize(options = {})
    options[:image] = Image["images/bullet.png"]
    super(options)
  end
end