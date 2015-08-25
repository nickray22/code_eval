require 'pry'

File.open(ARGV[0]).each_line do |line|
  answer = line.chomp.split(' ').map(&:to_f).sort.join(' ').split(' ').map { |e| sprintf '%.3f', e }.join(' ')
  print answer
  puts
end
