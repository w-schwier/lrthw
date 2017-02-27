def make_array(a, x, y)
  i = a
  numbers = []
  while i < x
    puts "At the top i is #{i}"
    numbers.push(i)

    i += y
    puts "Numbers now: ", numbers
  end
end

puts "The numbers: "

  # remember you can write this 2 other ways?
make_array(1, 10, 2)
