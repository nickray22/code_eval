require 'pry'

array = []

File.open(ARGV[0]).each_line do |line|
  string = line.chomp
  array << string
end
binding.pry
