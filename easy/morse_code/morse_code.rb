require 'pry'

morse_code = { '.-' => 'A',
               '-...' => 'B',
               '-.-.' => 'C',
               '-..' => 'D',
               '.' => 'E',
               '..-.' => 'F',
               '--.' => 'G',
               '....' => 'H',
               '..' => 'I',
               '.---' => 'J',
               '-.-' => 'K',
               '.-..' => 'L', 
               '--' => 'M',
               '-.' => 'N',
               '---' => 'O',
               '.--.' => 'P',
               '--.-' => 'Q',
               '.-.' => 'R',
               '...' => 'S',
               '-' => 'T',
               '..-' => 'U',
               '...-' => 'V',
               '.--' => 'W',
               '-..-' => 'X',
               '-.--' => 'Y', 
               '--..' => 'Z',
               '-----' => '0',
               '.----' => '1',
               '..---' => '2',
               '...--' => '3',
               '....-' => '4',
               '.....' => '5',
               '-....' => '6',
               '--...' => '7',
               '---..' => '8',
               '----.' => '9' }

File.open(ARGV[0]).each_line do |line|
  code = line.split('  ').collect{|x| x.chomp}.collect{|x| x.split}
  answer = []
  code.each do |word|
    word.collect!{|v| (v == v) ? morse_code[v] : ''}
    answer << word.join('')
  end
  answer = answer.join(' ')
  puts answer
end
