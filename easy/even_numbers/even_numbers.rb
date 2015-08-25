require 'pry'

File.open(ARGV[0]).each_line do |line|
  num = line.chomp.to_i
  if num.even? == true
    puts 1
  else
    puts 0
  end
end
