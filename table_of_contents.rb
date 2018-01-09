chap = ['Chapter 1: Getting Started','Chapter 2: Numbers','Chapter 3: Letters']
pg = ['page  1','page  9','page 13']
line_width = 30

puts ''
puts ('Table of Contents'.center(line_width*2))
puts ''

  slot = -1
while slot < 2
  puts chap[slot + 1].ljust(line_width) + pg[slot + 1].rjust(line_width)
  slot = slot + 1
end
