

print "Making collections of cars and stuff"

#Array which defines several cars by brand and then model year
car_coll = [Toyota.new("2007"), Toyota.new("1981"), Tata.new("2014"), Tata.new("2013"), Tesla.new("2015"), Tesla.new("2018")]

#this sort function sorts by year only
car_coll.sort do |a, b| a.year <=> b.year end

#this sort function sorts by model name only
car_coll.sort do |a, b| a.class.to_s <=> b.class.to_s end

#this sort function sorts first by model name, and then year.
car_coll.sort_by{ |a|
  [a.class.to_s, a.year]}
