

class Toyota < Car


  def to_s
    "Car has " + @wheels.to_s + " wheels, it's current speed is " + @speed.to_s + " km/h & it is a " + @year + " model."
  end

  def accel
    @speed += 7
  end

  def brake
    @speed -= 5
  end

end