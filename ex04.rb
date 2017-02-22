# for error code in excercise I would look at line 14, and check if the variable being called is spelt the same as desired variable

# sets variable cars equal to 100
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
# sets vavialbe cars_not_driven equal to 100 - 30
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available"
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
