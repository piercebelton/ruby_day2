class Car < Vehicle

  def initialize(year)
    @year = year
    @wheels = 4
    @speed = 0.0
  end

  def wheels
    @wheels
  end

end
