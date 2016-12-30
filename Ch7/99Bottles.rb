startno = 99
nxtno = startno
while nxtno > 2  
  puts nxtno.to_s + ' bottles of beer on the wall, ' + nxtno.to_s + ' bottles of beer.'
  puts 'Take one down and pass it around, '
  nxtno = nxtno - 1
  puts nxtno.to_s + ' bottles of beer on the wall.'
  puts
end

puts '2 more bottles of beer on the wall, 2 more bottles of beer.'
puts 'Take one down and pass it around'
puts '1 bottle of beer on the wall.'
puts
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around,'
puts 'no more bottles of beer on the wall.'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
