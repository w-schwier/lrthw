=begin
print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."
=end

print "How many fags do you smoke a day? "
fags = gets.chomp.to_i

days_a_box = 20.00 / fags
money_spent_week = ( 7.00 / days_a_box ) * 10.00
money_spent_year = (365.00 / days_a_box) * 10.00

puts "You spend about £#{money_spent_week} a week and £#{money_spent_year} a year! "
