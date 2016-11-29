#This is all of the code in one file, makes it easier to run.

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



class Car < Vehicle #inherits all methods and traits from the Vehicle class

  # initializes variable with a class of Car, sets year to argument passed by user, sets wheels to Fixnum 4, and speed to Float 0
  def initialize(year)
    @year = year
    @wheels = 4
    @speed = 0.0
  end

  # prints a string which interpolates the value wheels, speed, and model year and tells the user all of those things about a particular car
  def to_s
    "Car has #{@wheels} wheels, it's current speed is #{@speed} km/h & it is a #{@year} model."
  end

  #prints the number of wheels on a car to the user
  def wheels
    @wheels
  end

end



class Toyota < Car #Toyota inherits methods from Car and therefore Vehicle

  def accel
    @speed += 7
  end

  def brake
    @speed -= 5
  end

end



class Tesla < Car #Tesla inherits methods from Car and therefore Vehicle


  def accel
    @speed += 10
  end

  def brake
    @speed -= 7
  end

end



class Tata < Car #Tata inherits methods from Car and therefore Vehicle


  def accel
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end

end
