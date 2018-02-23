a = 'gun'
  b = 'dynamite'
  c = 'nuke'
  d = 'lightning'
  e = 'devil'
  f = 'dragon'
  g = 'alien'
  h = 'water'
  i = 'bowl'
  j = 'air'
  k = 'moon'
  l = 'paper'
  m = 'sponge'
  n = 'wolf'
  o = 'cockroach'
  p = 'tree'
  q = 'child'
  r = 'adult'
  s = 'monkey'
  t = 'snake'
  u = 'axe'
  v = 'scissors'
  w = 'fire'
  x = 'sun'
  y = 'rock'

$aB = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y]

#verbs
#'attacks': a => y, a => x, a => p, n => g, n => e, s => r, s => q, s => n, s => g,
# t => r, t => q, t => n
#'creates': a => w, b => w, c => w, d => b, e => d, e => c, e => b, e => a, f => d,
# f => w, g => d, p => j, p => i, q => p, r => q, r => p
#'destroys': a => v, b => a, b => y, b => v, b => u, b => t, b => s, b => r, b => q,
# b => p, b => o, c => b, c => a, c => y, c => v, c => u, d => a, d => v, d => u,
# g => a, g => y, g => x, g => v, g => u, j => h, n => m, n => l, s => m, s => l,
# t => m, u => m, w => v, w => u, w => m, w => l, y => m
#'damages': a => u, m => l, v => u, v => p, v => m, v => l, x => v, x => u, x => m


def falsify range
  for $slotNum in range do
    $aB[$slotNum] = 'false'
  end
end

def truthify range
  for $slotNum in range do
    $aB[$slotNum] = 'true'
  end
end

def inputCheck input
  for $slot in 0..24 do
    if input == $aB[$slot]
      $checkResult = 'valid'
      $userSlot = $slot
    end
  end
end

def determine tie
  $aB[tie] = 'tie'

  if tie + 1 < 24
	   rangeStart = tie + 1
     x = 1
     y = 11
	    while tie + x < 24 && y > 0
		    x = x + 1
		    y = y - 1
	    end
	  rangeEnd = tie + x
	  falsify rangeStart..rangeEnd
	   if y > 0
		  falsify 0..(y - 1)
	   end
   end

   if tie + 1 == 24
	  falsify 24..24
	  falsify 0..10
  elsif tie == 24
	  falsify 0..11
  end

  if tie - 1 > 0
	  rangeEnd = tie - 1
	  x = 1
	  y = 11
	   while tie - x > 0 && y > 0
		  x = x + 1
		  y = y - 1
	   end
	  rangeStart = tie - x
	  truthify rangeStart..rangeEnd
	   if y > 0
		  truthify (25 - y)..24
    end
  end

  if tie - 1 == 0
	  truthify 0..0
	  truthify 14..24
  elsif tie == 0
	  truthify 13..24
  end
end

puts ''
puts 'Your gesture:'
userGest = gets.chomp.downcase
puts ''

inputCheck userGest

comSlot = rand(25)
comGest = $aB[comSlot]

if $checkResult != 'valid'
  puts 'You entered an invalid gesture. Please try again.'
else
  puts 'Your opponent\'s gesture:'
  puts comGest
  puts ''
  determine $userSlot
end

result = $aB[comSlot]

if $checkResult == 'valid'
  if result == 'true'
    puts 'You won!'
  elsif result == 'false'
    puts 'You lost...'
  elsif result == 'tie'
    puts 'You tied.'
  else
    puts 'Something went wrong... Try again.'
  end
end
puts ''
