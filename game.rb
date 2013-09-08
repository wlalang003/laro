require 'rubygems' rescue nil# only necessary in Ruby 1.8
require 'chingu'
require_all 'lib'
include Gosu

class Laro < Chingu::Window
  def initialize
   super(800, 600, false)
   self.caption = 'laro'
   self.input = { :escape => :exit }
   init_game_status
   
   #@bgm = Song["death_from_above.ogg"]
   #@bgm.play
   push_game_state(Play)
   p GameStatus.equipped_weapon
  end
  
  def init_game_status
    GameStatus.equipped_weapon = GameConstants::WEAPON_ROCKET_LAUNCHER
    GameStatus.weapon_cooldown = 0
  end
end

Laro.new.show