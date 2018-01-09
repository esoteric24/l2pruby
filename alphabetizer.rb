inputs = []
slot_number = -1
input = ''
switch = 'on'

puts 'Enter any number of words, one word per line. Hit "enter" on an empty line to alphabetize them.'

while switch == 'on'
  input = gets.chomp.downcase
    if input != ''
      slot_number = slot_number + 1
      inputs[slot_number] = input
    else
      switch = 'off'
    end
end

puts 'In alphabetical order, your words are:'
puts inputs.sort
