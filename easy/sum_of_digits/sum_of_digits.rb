require 'pry'

File.open(ARGV[0]).each_line do |line|
  array = []
  line.each_char do |char|
    int = char.to_i
    array << int
  end
  sum = 0
  array.each { |int| sum += int }
  print sum
  puts
end
