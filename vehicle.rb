class Vehicle

  #initializes values for lights and signals to be "false" or "off"
  def initialize
    @lights = false
    @l_signal = false
    @r_signal = false
  end

  # Turn lights on and off
  def lights_on(bool)
    if bool == true
      @lights = true
    end
    if bool == false
      @lights = false
    end
  end

  # Return whether lights are on or off
  def lights_on?
    if @lights == true
      return true
    else
      return false
    end
  end

  # Turn l&r signals on and off
  def signal_on(bool, side)
    if bool == true
      if side == "right"
        @r_signal = true
      else
        @l_signal = true
      end
    else
      @l_signal = false
      @r_signal = false
    end
  end

end
