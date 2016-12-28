puts 'Let\'s play the Hamilton lyrics game!'
puts 'I will write a snippet of a lyric from the hit musical, Hamilton: An American Musical and you type in the exact next word on the next line.'
puts 'After, you will answer some trivia questions. Hope you have both your theatre nerd and history buff hats on because today will be a double whammy of question types!'
puts 'Let\'s get started!'
puts ' '
puts '"Get your education, don\'t forget from whence you came, and the world\'s gonna know your name. What\'s your name, man?"'
name = gets.chomp
puts name + ' What is his last name?'
lname = gets.chomp
puts name + ' ' + lname + ' My name is Alexander Hamilton. And there\'s a million things I haven\'t done. But just you wait, just you wait...'
puts ''
puts 'Did he have a middle name? Answer \'yes\' or \'no\'.'
ans = gets.chomp
puts 'So, his name is ' + name + ' ' + lname + ' and he has ' + ans + ' last name!'
puts 'Thanks for playing the game!'
