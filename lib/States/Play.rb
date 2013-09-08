class Play < Chingu::GameState
  def initialize
    super
    @ship = Ship.create()
    @ship.input = { 
                    [:holding_a, :holding_left, :holding_pad_left] => :move_left, 
                    [:holding_d, :holding_right, :holding_pad_right] => :move_right, 
                    [:holding_w, :holding_up, :holding_pad_up] => :move_up, 
                    [:holding_s, :holding_down, :holding_pad_down] => :move_down, 
                    [:holding_space, :return, :pad_button_2] => :fire,
                    [:'1'] => :switch_to_machine_gun,
                    [:'2'] => :switch_to_rocket_launcher
                  }
  end
  
  def draw
    super
  end
  
  def update
    super
  end  
end