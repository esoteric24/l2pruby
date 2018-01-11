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
          $num_string = $num_string + (ones[(hundreds_place - 1)]).to_s + ' hundred '
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
            $num_string = $numstring + (ones[(ones_place - 1)]) + ' '
          end

      return $num_string

    end

  remaining = number

  if (remaining - 10**12) >= 0
    trillions = remaining/(10**12)
     englishify trillions
      $num_string = $num_string + 'trillion '
        remaining = remaining - (trillions*10**12)
  end

  if (remaining - 10**9) >= 0
    billions = remaining/(10**9)
     englishify billions
      $num_string = $num_string + 'billion '
        remaining = remaining - (billions*10**9)
  end

  if (remaining - 10**6) >= 0
    millions = remaining/(10**6)
     englishify millions
      $num_string = $num_string + 'million '
        remaining = remaining - (millions*10**6)
  end

  if (remaining - 10**3) >= 0
    thousands = remaining/(10**3)
     englishify thousands
      $num_string = $num_string + 'thousand '
        remaining = remaining - (thousands*10**3)
  end

  if remaining > 0
     englishify remaining
  end

  $num_string

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
