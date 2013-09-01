require 'rubygems' rescue nil# only necessary in Ruby 1.8
require 'chingu'
require_all 'lib'
include Gosu

class Laro < Chingu::Window
  def initialize
   super(800, 600, false)
   self.caption = 'laro'
   self.input = { :escape => :exit }
   
   push_game_state(Play)
  end
end

Laro.new.show