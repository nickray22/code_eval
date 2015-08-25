require 'pry'

File.open(ARGV[0]).each_line do |line|
  uniq_arr = line.chomp.split(',').uniq
  new = []
  uniq_arr.each do |x|
    each_num = x.to_i
    new << each_num
  end
  answer = new.map(&:inspect).join(',')
  print answer
  puts
end
