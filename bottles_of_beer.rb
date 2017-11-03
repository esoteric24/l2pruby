beer1 = 99
line1a = ' bottles of beer on the wall!'
line1b = ' bottle of beer on the wall!'
line2a = ' bottles of beer!'
line2b = ' bottle of beer!'
line3 = 'Take one down, pass it around, '

while beer1 >= 1
  if beer1 == 2
    puts beer1.to_s + line1a
    puts beer1.to_s + line2a
      beer2 = (beer1 - 1)
    puts line3 + beer2.to_s + line1b
      beer1 = beer2
  elsif beer1 == 1
    puts beer1.to_s + line1b
    puts beer1.to_s + line2b
      beer2 = (beer1 - 1)
    puts line3 + beer2.to_s + line1a
      beer1 = beer2
  else
    puts beer1.to_s + line1a
    puts beer1.to_s + line2a
    beer2 = (beer1 - 1)
    puts line3 + beer2.to_s + line1a
      beer1 = beer2
  end
end
