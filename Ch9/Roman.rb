puts 'Input an integer between 1 and 3000, inclusive.'
puts 'We will convert it into a Roman numeral. Input integer now.'

num = gets.chomp.to_i

def old_roman_numeral num
  rom_num = ''
  rom_num = rom_num + 'M' * (num / 1000)
  rom_num = rom_num + 'D' * (num % 1000 / 500)
  rom_num = rom_num + 'C' * (num % 500 / 100)
  rom_num = rom_num + 'L' * (num % 100 / 50)
  rom_num = rom_num + 'X' * (num % 50 / 10)
  rom_num = rom_num + 'V' * (num % 10 / 5)
  rom_num = rom_num + 'I' * (num % 5)
  rom_num
end
puts
puts
puts num.to_s + ' in Roman numerals is ' + (old_roman_numeral(num)).to_s + '.'
puts 'Thank you for using our conversion service.'
puts 'Have a nice day.'
