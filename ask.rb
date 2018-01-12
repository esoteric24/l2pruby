def ask question
  loop do
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      if reply == 'yes'
        return true
        break
      else
        return false
        break
      end
    else
      puts 'Please answer "yes" or "no."'
    end
  end

end

answer = ask 'Is this an awkward way of testing this?'
puts answer
