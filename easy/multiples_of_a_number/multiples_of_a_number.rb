require 'pry'

File.open(ARGV[0]).each_line do |line|
  num = line.chomp.split(',').map(&:to_i)
  x = num.first
  n = num.last
  m = 1
  continue = true
  while(continue)
    if n*m >= x
      puts n*m
      continue = false
    end
    m += 1
  end
end
