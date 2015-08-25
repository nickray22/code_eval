require 'pry'

array = []
num = 0
until num == 99
  num += 1
  if num.odd? ==true
  array << num
  end
end
array.each { |num| puts num }
