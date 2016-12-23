=begin
var1 = 2
var 2 = '5'
puts var1 = var2
=end

=begin
.to_s for string, groups of letters in a program
strings can have punctuation, digits, symbols, and spaces
empty string - nothing in it
using ' = use \' to prevent mixing up stuff
=end
puts ' '
var1 = 2
var2 = '5'
puts var1.to_s + var2

=begin
.to_i for integer, numbers w/o decimal points
.to_f for floats
floats (floating-point numbers) - numbers with decimal points
=end

puts ' '
var1 = 2
var2 = '5'
puts var1.to_s + var2
=begin '2' + '5' + 25
=end
puts var1 + var2.to_i
=begin (2+5) = 7
=end

puts ' '
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ' '
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts '  '
puts 'stringy'.to_s
puts 3.to_i

=begin
puts - 'put string';
gets - 'get string'
=end

puts ' '
puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + "? What a lovely name!"
puts 'Pleased to meet you, ' + name + '. :)'

puts ' '
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + "? What a lovely name!"
puts 'Pleased to meet you, ' + name + '. :)'
