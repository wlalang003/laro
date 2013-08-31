require 'rubygems' # only necessary in Ruby 1.8
require 'gosu'
require 'ship'
require 'projectile'

class MyWindow < Gosu::Window
  def initialize
   super(640, 480, false)
   self.caption = 'Hello World!'
   @ship = Ship.new(self)
  end
  
  def update
    if button_down? Gosu::KbLeft then
      @ship.move_left
    end
    
    if button_down? Gosu::KbRight then
      @ship.move_right
    end
    
    if button_down? Gosu::KbSpace then
      @ship.generate_rocket
    end
  end
  
  def draw
    @ship.draw
  end
end

window = MyWindow.new
window.show