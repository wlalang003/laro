class Ship < Chingu::GameObject  
  def initialize(options = {})
    options[:zorder] = 9999
    super
    @image = Image["images/ship.png"]
    @x = $window.width / 2
    @y = $window.height - @image.height / 2
  end
  
  #MOVEMENT
  def move_left; @x -= 4; end
  def move_right; @x += 4; end
  def move_up; @y -= 4; end
  def move_down; @y += 4; end
  
  def fire
    case GameStatus.equipped_weapon
    when GameConstants::WEAPON_MACHINE_GUN
      return if GameStatus.weapon_cooldown > 0
      GameStatus.weapon_cooldown = 4
      Bullet.create(:x => @x, :y => @y)
    when GameConstants::WEAPON_ROCKET_LAUNCHER
      return if GameStatus.weapon_cooldown > 0
      GameStatus.weapon_cooldown = 20
      Rocket.create(:x => @x, :y => @y)
    end
  end
  
  def update
    GameStatus.tick_cooldown
  end
  
  def switch_to_machine_gun
    return if GameStatus.equipped_weapon == GameConstants::WEAPON_MACHINE_GUN
    GameStatus.equipped_weapon = GameConstants::WEAPON_MACHINE_GUN
    p "MachineGun"
  end
  
  def switch_to_rocket_launcher
    return if GameStatus.equipped_weapon == GameConstants::WEAPON_ROCKET_LAUNCHER
    GameStatus.equipped_weapon = GameConstants::WEAPON_ROCKET_LAUNCHER
    p "RocketLauncher"
  end
end