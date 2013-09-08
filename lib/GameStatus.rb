module GameStatus
  class << self
    attr_accessor :equipped_weapon, :weapon_cooldown
    
    def tick_cooldown
      @weapon_cooldown -= 1 if @weapon_cooldown > 0
    end
  end
end