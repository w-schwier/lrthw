user_name, email = ARGV
promt = '*** '

puts "Hi #{user_name}."
puts "First off, Is this your email address? #{email}", promt
answer = $stdin.gets.chomp
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts promt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?"
puts promt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", promt
computer = $stdin.gets.chomp

puts """
Alright, so you said: #{answer}, to #{email} being your email, #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
