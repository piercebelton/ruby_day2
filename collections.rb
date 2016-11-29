

print "Making collections of cars and stuff"

car_coll = [Toyota.new("2007"), Toyota.new("1981"), Tata.new("2014"), Tata.new("2013"), Tesla.new("2015"), Tesla.new("2018")]


car_coll.sort do |a, b| a.year <=> b.year end

car_coll.sort do |a, b| a.class.to_s <=> b.class.to_s end

car_coll.sort_by{ |a|
  [a.class.to_s, a.year]}
