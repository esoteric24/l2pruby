inputs = []
input = ''

puts 'Enter any number of words, one word per line. Hit "enter" on an empty line to alphabetize them.'

loop do
  input = gets.chomp.downcase
    if input != ''
      inputs.push input
    else
      break
    end
end

puts 'In alphabetical order, your words are:'
puts inputs.sort
