def ask question
  while 1 == 1
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no."'
    end
  end

end

answer = ask 'Is this an awkward way of testing this?'
puts answer
