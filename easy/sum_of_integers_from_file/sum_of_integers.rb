require 'pry'

num_array = []
File.open(ARGV[0]).each_line do |line|
  num_array << line.to_i
end

puts num_array.inject{ |sum, n| sum + n }
