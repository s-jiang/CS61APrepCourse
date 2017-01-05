puts 'Input an integer between 1 and 3000, inclusive.'
puts 'We will convert it into a Roman numeral. Input integer now.'

num = gets.chomp.to_i

def roman_numeral num
  thousand = (num / 1000)
  hundred = (num % 1000 / 100)
  ten = (num % 100 / 10)
  ones = (num % 10)

  rom_num = 'M' * thousand
    if hundred == 9
      rom_num = rom_num + 'CM'
    elsif hundred == 4
      rom_num = rom_num + 'CD'
    else
      rom_num = rom_num + 'D' * (num % 1000 / 500)
      rom_num = rom_num + 'C' * (num % 500 / 100)
    end

    if ten == 9
      rom_num = rom_num + 'XC'
    elsif ten == 4
      rom_num = rom_num + 'XL'
    else
      rom_num = rom_num + 'L' * (num % 100 / 50)
      rom_num = rom_num + 'X' * (num % 50 / 10)
    end

    if ones == 9
      rom_num = rom_num + 'IX'
    elsif ones == 4
      rom_num = rom_num + 'IV'
    else
      rom_num = rom_num + 'V' * (num % 10 / 5)
      rom_num = rom_num + 'I' * (num % 5)
    end
  rom_num
end
puts
puts
puts num.to_s + ' in modern Roman numerals is ' + (roman_numeral(num)).to_s + '.'
puts 'Thank you for using our conversion service.'
puts 'Have a nice day.'
