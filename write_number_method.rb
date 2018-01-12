def write_number number

  $num_string = ' '

  if number == 0
    return 'zero'
  end

  if number < 0
    number = number.abs
    $num_string = 'negative '
  end

  if number > 10**15
    return 'Please enter a number greater than negative one quadrillion and less than
    one quadrillion.'
  end

    def englishify number

      ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
      tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
      teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

        hundreds_place = number/100
          if hundreds_place >= 1
            $num_string = $num_string + ones[hundreds_place - 1] + ' hundred '
          end

        number = number - (hundreds_place*100)

        tens_place = number/10
          if tens_place > 1
            $num_string = $num_string + tens[(tens_place - 1)]
          end

        number = number - (tens_place*10)

        ones_place = number
          if (tens_place == 1)&&(ones_place == 0)
            $num_string = $num_string + tens[0] + ' '
          elsif tens_place == 1
            $num_string = $num_string + teens[(ones_place - 1)] + ' '
          end

          if (tens_place > 1)&&(ones_place != 0)
            $num_string = $num_string + '-' + ones[(ones_place - 1)] + ' '
          elsif tens_place > 1
            $num_string = $num_string + ' '
          end

          if (tens_place == 0)&&(ones_place != 0)
            $num_string = $num_string + (ones[(ones_place - 1)]) + ' '
          end

      return $num_string

    end

  remaining = number

    trillions = ''
  trillion_array = [10**12, trillions, 'trillion ']
    billions = ''
  billion_array = [10**9, billions, 'billion ']
    millions = ''
  million_array = [10**6, millions, 'million ']
    thousands = ''
  thousand_array = [10**3, thousands, 'thousand ']

  master_array = [trillion_array, billion_array, million_array, thousand_array]

  slot = 0

  while slot <= 3
   if (remaining - master_array[slot][0]) >= 0
     master_array[slot][1] = remaining/(master_array[slot][0])
     englishify master_array[slot][1]
      $num_string = $num_string + master_array[slot][2]
        remaining = remaining - ((master_array[slot][1])*(master_array[slot][0]))
    end
    slot = slot + 1
  end

  if remaining > 0
     englishify remaining
  end

  return $num_string

end

puts 'Enter a number in numerals to convert it to words.'
puts ''

input = gets.chomp
  integer = input.to_i
  string = integer.to_s

if string != input
  puts ''
  puts 'Please enter a valid number.'
else
  puts ''
  puts write_number(integer)
  puts ''
end
