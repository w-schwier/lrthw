from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

indata = open(from_file, 'r'); out_file = open(to_file, 'w'); out_file.write(indata)

puts "Done."; out_file.close; indata.close
