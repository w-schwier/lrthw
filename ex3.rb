# prints text
puts "I will now count my chickens:"

# prints text then (30/6) + 5
puts "Hens #{25 + 30 / 6}"
# prints text then 25*3 = 75, 75%4 = 3, 100 - 3 =97
puts "Roosters #{100 - 25 * 3 % 4}"

# prints text
puts "Now I will count the eggs:"

# 6-5 = 1, 4%2 = 0, 1/4 = 0 (no floating point, or 0.25 with; hence final answer will be 6.75), 1+0-0(or 0.25)+6 = 7 (or 6.25)
puts 3 + 2 + 1 - 5 + 4 % 2 - 1.00 / 4 + 6

# prints text
puts "Is it true that 3 + 2 < 5 - 7?"

# no "" means will return a boolean value
puts 3 + 2 < 5 - 7

# prints text then sum
puts "What is 3 + 2? #{3 + 2}"
# prints text then sum
puts "What is 5 -7 ? #{5 - 7}"

# prints text
puts "Oh that's why it's false."

# prints text
puts "How about some more."

# prints text then boolean value
puts "Is it greater? #{5 > -2}"
# prints text then boolean value
puts "Is it greater or equal? #{5 >= -2}"
# prints text then boolean value
puts "Is it less or equal? #{5 <= -2}"
