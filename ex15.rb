filename = ARGV.first

#opens file
txt = open(filename)

puts "Here's your file #{filename}:"
#reads file
puts txt.read


print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

txt.close
txt_again.close
