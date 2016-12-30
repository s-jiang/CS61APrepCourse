puts 'Grandma: "My! My! How you\'ve grown since the last time I\'ve seen you, Sonny Boy!"'
puts 'How have you been?'
while true
  reply = gets.chomp

  if reply == 'BYE'
    puts 'Deaf Grandma: "Well, alright, alright. No need to shout about it."'
    break
  end

  if reply == reply.capitalize || reply == reply.downcase
    puts 'Deaf Grandma: "HUH?! SPEAK UP, SONNY!"'
  else
    puts 'Deaf Grandma: "NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!"'
  end
end
