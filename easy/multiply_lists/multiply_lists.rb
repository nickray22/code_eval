require 'pry'

File.open(ARGV[0]).each_line do |line|
  base = line.chomp.split('|')
  first_array = base.first.split(' ').map(&:to_i)
  second_array = base.last.split(' ').map(&:to_i)
  puts first_array.zip(second_array).map{ |a,b| a * b }.join(' ')
  binding.pry
end
