require 'pry'

File.open(ARGV[0]).each_line do |line|
  binding.pry
  string = line.chomp.downcase.gsub(/[^a-z\s]/, '')
end

