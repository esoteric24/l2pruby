puts 'HOW LOVELY TO SEE YOU, DARLING!'
puts "ISN'T IT SO KIND OF THEM TO VISIT, GERTRUDE?"
puts 'POOR OLD BOB—YOU KNOW BOB? THIRD FLOOR?—HASN\'T HAD VISITORS IN AT LEAST A YEAR, AND HIM WITH FIVE CHILDREN, TOO.'
puts 'BUT HOW ARE YOU? COME AND TELL GRANDMA.'
puts ' '

response = ''
value = ''

while value != 0
  response = gets.chomp
    if response == 'BYE'
      puts ' '
      puts '...UH. SORRY, DARLING, I MUST HAVE MISHEARD. YOU SAID "PIE," SURELY?'
      puts ' '
        response = gets.chomp
        if response == 'BYE'
          puts ' '
          puts 'WHAT ABOUT PIE?'
          puts ' '
            response = gets.chomp
            if response == 'BYE'
              puts ' '
              puts '...OH, DEAR, IS THAT WHAT YOU WERE SAYING?'
              puts 'WELL.'
              puts 'GOODBYE, I SUPPOSE. COME AGAIN SOON!'
                value = 0
            else
              puts ' '
              puts 'CHERRY. DEFINITELY CHERRY. MY MOTHER\'S RECIPE WON A PRIZE AT THE COUNTY FAIR IN \'32, YOU KNOW.'
              puts ' '
            end
        else
          puts ' '
          puts 'CHERRY. DEFINITELY CHERRY. MY MOTHER\'S RECIPE WON A PRIZE AT THE COUNTY FAIR IN \'32, YOU KNOW.'
          puts ' '
        end
    elsif response == response.upcase
      puts ' '
      puts 'HOW KIND OF YOU TO ASK!'
        year = (rand(22) + 1929)
      puts 'NOT SINCE ' + year.to_s + ', IF YOU MUST KNOW.'
      puts ' '
    else
      puts ' '
      puts 'WHAT WAS THAT?'
      puts 'SPEAK UP, DARLING, YOU KNOW YOUR OLD GRANDMA\'S HEARING IS NOT WHAT IT ONCE WAS.'
      puts ' '
    end
end
