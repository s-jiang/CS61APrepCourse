toc = ['The Smartest Man is Hard to Find', 'The Man Who Remembered Too Much', 'The Expert Expert', 'The Most Forgetful Man in the World']
pg = ['3', '21', '49', '69']

line_width = 20
puts 'Moonwalking with Einstein'.upcase.center(line_width+25)
puts 'Contents'.center(line_width+25)

puts ('Chapter 1   ' + toc[0]).ljust(line_width) + ('page ' + pg[0]).rjust(line_width)
puts ('Chapter 2   ' + toc[1]).ljust(line_width) + ('page ' + pg[1]).rjust(line_width + 2)
puts ('Chapter 3   ' + toc[2]).ljust(line_width) + ('page ' + pg[2]).rjust(line_width + 16)
puts ('Chapter 4   ' + toc[3]).ljust(line_width) + ('page ' + pg[3]).rjust(line_width - 2)
