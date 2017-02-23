=begin
first, second, third = ARGV

puts "Your first variable is : #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
=end

first, second, third, fourth = ARGV

puts "Here are you variables #{ARGV}"

print "How old are you? "
age = $stdin.gets.chomp
print "You are #{age} years old!""
