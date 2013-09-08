class Rocket < Projectile
  def initialize(options = {})
    options[:image] = Image["images/rocket.png"]
    super(options)
    @acceleration = 1
    @fireball_animation = Chingu::Animation.new(:file => "fireball.png", :size => [32,32])
  end
  
  def update
    self.destroy if @y < -20
    @acceleration *= 1.1 if @acceleration < 20
    @y -= @acceleration
    Chingu::Particle.create( :x => @x, 
                          :y => @y + 50,
                          :zorder => 0,
                          :animation => @fireball_animation,
                          :scale_rate => +0.05, 
                          :fade_rate => -10,
                          :rotation_rate => +1,
                          :mode => :default
                        )
    Chingu::Particle.each do |particle| 
      particle.y += 0; particle.x += 2 - rand(4)
      particle.destroy if particle.outside_window? || particle.color.alpha == 0
    end
  end
end