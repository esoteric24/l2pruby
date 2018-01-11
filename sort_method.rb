inputs = []
input = 'lel'
$list_length = -1


puts 'Enter any number of words or phrases, one per line. Hit "enter" on an empty line to alphabetize them.'

loop do
  input = gets.chomp
  if input != ''
    inputs.push input
    $list_length = $list_length + 1
  else
    break
  end    
end

sorted = []

def alphabetize (array, sorted)
  while sorted[$list_length] == nil
    slot_a = 0
    slot_b = 1
    while slot_b <= $list_length
      if array[slot_a] == '_'
        slot_a = slot_a + 1
      elsif array[slot_b] == '_'
        slot_b = slot_b + 1
      else
        if array[slot_a].downcase <= array[slot_b].downcase
          slot_b = slot_b + 1
        elsif array[slot_a].downcase > array[slot_b].downcase
          slot_a = slot_b
          slot_b = slot_b + 1
        end
      end
    end
    sorted.push array[slot_a]
    array[slot_a] = '_'
  end
end

alphabetize (inputs, sorted)

puts 'In alphabetical order, your items are:'
puts ''
puts sorted
