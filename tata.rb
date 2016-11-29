class Tata < Car

  def to_s
    "Car has " + @wheels.to_s + " wheels, it's current speed is " + @speed.to_s + " km/h & it is a " + @year + " model."
  end

    def accel
      @speed += 2
    end

    def brake
      @speed -= 1.25
    end

end
