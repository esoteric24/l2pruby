inputs = []
input = 'placeholder'
$list_length = -1


puts 'Enter any number of words or phrases, one per line. Hit "enter" on an empty line to shuffle them.'

loop do
  input = gets.chomp
  if input != ''
    inputs.push input
    $list_length = $list_length + 1
  else
    break
  end
end

shuffled = []

def shuffle (array, shuffled)
  while shuffled[$list_length] == nil
    slot = rand($list_length + 1)
      if array[slot] != '_'
        shuffled.push array[slot]
        array[slot] = '_'
      end
  end
end

shuffle (inputs, shuffled)

puts ''
puts shuffled
