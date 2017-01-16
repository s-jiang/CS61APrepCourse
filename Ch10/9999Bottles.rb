puts 'How many bottles of beer do you want?'

startno = gets.chomp.to_i
nxtno = startno

def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  illions   = [['hundred', 2],
               ['thousand', 3],
               ['million', 6],
               ['billion', 9],
               ['trillion', 12],
               ['quadrillion', 15],
               ['quintillion', 18],
               ['sextillion', 21],
               ['septilion', 24],
               ['octillion', 27],
               ['nonillion', 30],
               ['decillion', 33],
               ['undecillion', 36],
               ['duodecillion', 39],
               ['tredecillion', 42],
               ['quatturodecillion', 45],
               ['quindecillion', 48],
               ['sexdecillion', 51],
               ['septendecillion', 54],
               ['octodecillion', 57],
               ['novemdecillion', 60],
               ['vigintillion', 63],
               ['googol', 100],
               ['centillion', 303]]

left = number

while illions.length > 0
  ill_line = illions.pop
  ill_name = ill_line[0]
  ill_base = 10 ** ill_line[1]
  write = left/ill_base
  left = left - write*ill_base

  if write > 0
    prefix = english_number write
    num_string = num_string + prefix + ' ' + ill_name

    if left > 0
      num_string = num_string + ' '
    end
  end
end

  write = left/10         # How many tens left?
  left = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0     # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

# Now we just return "num_string"...
  num_string
end

while nxtno > 2
  puts english_number(nxtno).capitalize + ' bottles of beer on the wall, ' + english_number(nxtno) + ' bottles of beer.'
  puts 'Take one down and pass it around, '
  nxtno = nxtno - 1
  puts english_number(nxtno) + ' bottles of beer on the wall.'
  puts
end

puts 'Two more bottles of beer on the wall, two more bottles of beer.'
puts 'Take one down and pass it around,'
puts 'one bottle of beer on the wall.'
puts
puts 'One bottle of beer on the wall, one bottle of beer.'
puts 'Take it down and pass it around,'
puts 'no more bottles of beer on the wall.'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ' + english_number(startno) + ' bottles of beer on the wall.'
