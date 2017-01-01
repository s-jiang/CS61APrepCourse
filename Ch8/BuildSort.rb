puts 'Type in a list of single words and we\'ll alphabetize it for you.'
puts 'Ready? Go!'

list = []

while true
  word = gets.chomp
  list.push word
  if  word == ''
    puts 'The following is your generated list: '
    puts list.sort
    puts 'Thank you for using our alphabetzing service. Have a nice day.'
    break
  end
end
