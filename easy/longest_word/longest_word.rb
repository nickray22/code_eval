require 'pry'

def longest_word(array)
  array.group_by(&:size).max.last
end

File.open(ARGV[0]).each_line do |line|
  puts longest_word(line.split).first
end
