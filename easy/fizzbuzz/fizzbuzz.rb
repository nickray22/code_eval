require 'pry'

File.open(ARGV[0]).each_line do |line|
  binding.pry
  args = line.split

  x = args.at(0).to_i
  y = args.at(1).to_i
  n = args.at(2).to_i

  (1..n).each do |num|
    if num % x == 0 && num % y != 0
      print 'F'
    end
    if num % y == 0 && num % x != 0
      print 'B'
    end
    if num % x == 0 && num % y == 0
      print 'FB'
    end
    if num % x != 0 && num % y != 0
      print num
    end
    print ' '
  end
  puts
end
