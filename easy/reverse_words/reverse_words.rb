require 'pry'

File.open(ARGV[0]).each_line do |line|
  puts line.chomp.split.reverse.join(' ')
end
