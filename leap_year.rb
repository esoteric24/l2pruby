puts 'Starting year?'
  year1 = gets.chomp.to_i

puts 'Ending year?'
  year2 = gets.chomp.to_i

  currentyear = year1
  answer = 0

while currentyear <= year2
  if currentyear%100 == 0
    if currentyear%400 == 0
      answer = answer + 1
    end
  else
    if currentyear%4 == 0
    answer = answer + 1
    end
  end
  currentyear = currentyear + 1
end

if answer != 1
  puts 'There are ' + answer.to_s + ' leap years between ' + year1.to_s + ' and ' + year2.to_s + '.'
else
  puts 'There is ' + answer.to_s + ' leap year between ' + year1.to_s + ' and ' + year2.to_s + '.'
end
