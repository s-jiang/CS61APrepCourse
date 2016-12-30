puts 'Grandma: "My! My! How you\'ve grown since the last time I\'ve seen you, Sonny Boy!"'
puts 'How have you been?'

count = 0

while true
  reply = gets.chomp

  if reply == 'BYE'
    count = count + 1
  else
    count = 0
  end
    if count == 1
        puts 'Deaf Grandma: "NO, I\'M SURE THAT YOUR MOTHER IS DOING JUST FINE."'
    end
      if count == 2
        puts 'Deaf Grandma: "THANK YOU FOR NOTICING! I JUST CLEANED THESE!!"'
      end
        if count == 3
          puts 'Sad Grandma: "Well, alright, alright. No need to shout about it."'
          break
        end

  if reply == reply.capitalize || reply == reply.downcase
    puts 'Deaf Grandma: "HUH?! SPEAK UP, SONNY!"'
  elsif reply != 'BYE'
    puts 'Deaf Grandma: "NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!"'
  end
end
