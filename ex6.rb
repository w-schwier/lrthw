types_of_people = 10
x = 'There are #{types_of_people} types of people.'
binary = 'binary'
do_not = "don't"
# 2 strings inside a string
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# string inside a string
puts "I said: #{x}."
# string inside a string
puts "I also said: '#{y}'."

# set variable equal to boolean value false
hilarious = false
# calls variable hilarious
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e

# using + combines the two strings as they aren't integers
# using single quotion marks will work unless #{} is used
