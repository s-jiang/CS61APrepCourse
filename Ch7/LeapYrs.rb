puts 'Type a start year in integers only.'
srtyr = gets.chomp.to_i

puts 'Type an end year in integers only.'
endyr = gets.chomp.to_i

yr = srtyr

while yr <= endyr
  if yr % 4 == 0
    if yr%400 == 0 || yr%100 != 0
      puts
      puts yr.to_s + ' is a leap year!'
    end
  end
  yr = yr + 1
end
