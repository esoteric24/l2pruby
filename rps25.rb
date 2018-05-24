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
$rA = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
  ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

$vA = [' attacks ', ' creates ', ' destroys ', ' damages ', ' kills ',
  ' covers ', 'stops', ' breaks ', ' hurts ', ' ignores ', ' uses ']

$gunVerbs = {n => $vA[4], o => $vA[4], p => $vA[0], q => $vA[4], r => $vA[4],
  s => $vA[4], t => $vA[4], u => $vA[3], v => $vA[2], w => $vA[1], x => $vA[0],
  y => $vA[0]}
  $dynaVerbs = {o => $vA[2], p => $vA[2], q => $vA[2], r => $vA[2], s => $vA[2],
  t => $vA[2], u => $vA[2], v => $vA[2], w => $vA[1], x => $vA[5], y => $vA[2],
  a => $vA[2]}
  $nukeVerbs = {p => $vA[4], q => $vA[4], r => $vA[4], s => $vA[4], t => $vA[4],
  u => $vA[2], v => $vA[2], w => $vA[1], x => $vA[5], y => $vA[2], a => $vA[2],
  b => $vA[2]}
  $lightVerbs = {q => $vA[8], r => $vA[8], s => $vA[4], t => $vA[4], u => $vA[2],
  v => $vA[2], w => $vA[1], x => $vA[5], y => $vA[7], a => $vA[2], b => $vA[1],
  c => $vA[6]}
  $devilVerbs = {r => $vA[4], s => $vA[4], t => $vA[4], u => $vA[9],
  v => $vA[9], w => $vA[1], x => $vA[2], y => $vA[2], a => $vA[1], b => $vA[1],
  c => $vA[1], d => $vA[1]}
  $dragonVerbs = {s => $vA[4], t => $vA[4], u => $vA[2], v => $vA[2],
  w => $vA[1], x => $vA[5], y => $vA[7], a => $vA[2], b => $vA[9], c => $vA[9],
  d => $vA[1], e => $vA[4]}
  $alienVerbs = {t => $vA[4], u => $vA[2], v => $vA[2], w => $vA[6],
  x => $vA[2], y => $vA[2], a => $vA[2], b => $vA[6], c => $vA[6], d => $vA[1],
  e => $vA[9], f => $vA[4]}
  $waterVerbs = {u => $vA[7], v => $vA[7], w => $vA[6], x => $vA[9],
  y => $vA[7], a => $vA[7], b => $vA[6], c => $vA[6], d => $vA[9], e => $vA[8],
  f => $vA[4], g => $vA[4]}
  $bowlVerbs = {v => $vA[5], w => $vA[6], x => $vA[9], y => $vA[5], a => $vA[7],
  b => $vA[6], c => $vA[6], d => $vA[9], e => $vA[8], f => $vA[4], g => $vA[4],
  h => $vA[5]}
  $airVerbs = {w => $vA[6], x => $vA[6], y => $vA[7], a => $vA[7], b => $vA[6],
  c => $vA[6], d => $vA[1], e => $vA[4], f => $vA[4], g => $vA[4], h => $vA[2],
  i => $vA[7]}
  $moonVerbs = {x => $vA[5], y => $vA[2], a => $vA[9], b => $vA[6], c => $vA[9],
  d => $vA[9], e => $vA[8], f => $vA[5], g => $vA[6], h => $vA[2], i => $vA[7],
  j => $vA[9]}
  $paperVerbs = {y => $vA[5], a => $vA[6], b => $vA[6], c => $vA[6],
  d => $vA[6], e => $vA[7], f => $vA[9], g => $vA[9], h => $vA[5], i => $vA[5],
  j => $vA[10], k => $vA[5]}
  $spongeVerbs = {a => $vA[7], b => $vA[6], c => $vA[7], d => $vA[9],
  e => $vA[8], f => $vA[9], g => $vA[8], h => $vA[10], i => $vA[10],
  j => $vA[10], k => $vA[5], l => $vA[3]}
  $wolfVerbs = {b => $vA[10], c => $vA[10], d => $vA[9], e => $vA[0],
  f => $vA[0], g => $vA[0], h => $vA[10], i => $vA[10], j => $vA[10],
  k => $vA[10], l => $vA[2], m => $vA[2]}
  $roachVerbs = {c => $vA[9], d => $vA[9], e => $vA[9], f => $vA[9],
  g => $vA[9], h => $vA[10], i => $vA[10], j => $vA[10], k => $vA[9],
  l => $vA[2], m => $vA[2], n => $vA[9]}
  $treeVerbs = {d => $vA[6], e => $vA[6], f => $vA[5], g => $vA[6],
  h => $vA[10], i => $vA[1], j => $vA[1], k => $vA[5], l => $vA[1],
  m => $vA[10], n => $vA[5], o => $vA[5]}
  $childVerbs = {e => $vA[9], f => $vA[10], g => $vA[9], h => $vA[10],
  i => $vA[10], j => $vA[10], k => $vA[10], l => $vA[10], m => $vA[10],
  n => $vA[10], o => $vA[4], p => $vA[1]}
  $adultVerbs = {f => $vA[4], g => $vA[9], h => $vA[10], i => $vA[10],
  j => $vA[10], k => $vA[10], l => $vA[10], m => $vA[10], n => $vA[10],
  o => $vA[4], p => $vA[1], q => $vA[1]}
  $monkeyVerbs = {g => $vA[0], h => $vA[10], i => $vA[7], j => $vA[10],
  k => $vA[9], l => $vA[2], m => $vA[2], n => $vA[0], o => $vA[4], p => $vA[10],
  q => $vA[0], r => $vA[0]}
  $snakeVerbs = {h => $vA[10], i => $vA[10], j => $vA[10], k => $vA[9],
  l => $vA[0], m => $vA[2], n => $vA[0], o => $vA[4], p => $vA[10], q => $vA[0],
  r => $vA[0], s => $vA[4]}
  $axeVerbs = {i => $vA[7], j => $vA[9], k => $vA[9], l => $vA[2], m => $vA[2],
  n => $vA[4], o => $vA[4], p => $vA[4], q => $vA[8], r => $vA[8], s => $vA[4],
  t => $vA[4]}
  $scisVerbs = {j => $vA[9], k => $vA[9], l => $vA[3], m => $vA[3], n => $vA[8],
  o => $vA[4], p => $vA[3], q => $vA[8], r => $vA[8], s => $vA[4], t => $vA[4],
  u => $vA[3]}
  $fireVerbs = {k => $vA[5], l => $vA[2], m => $vA[2], n => $vA[8], o => $vA[4],
  p => $vA[4], q => $vA[8], r => $vA[8], s => $vA[8], t => $vA[8], u => $vA[2],
  v => $vA[2]}
  $sunVerbs = {l => $vA[9], m => $vA[3], n => $vA[8], o => $vA[8], p => $vA[2],
  q => $vA[8], r => $vA[8], s => $vA[8], t => $vA[8], u => $vA[3], v => $vA[3],
  w => $vA[2]}
  $rockVerbs = {m => $vA[2], n => $vA[8], o => $vA[4], p => $vA[6], q => $vA[8],
  r => $vA[8], s => $vA[8], t => $vA[4], u => $vA[7], v => $vA[7], w => $vA[6],
  x => $vA[5]}

$vH = {a => $gunVerbs, b => $dynaVerbs, c => $nukeVerbs, d => $lightVerbs,
  e => $devilVerbs, f => $dragonVerbs, g => $alienVerbs, h => $waterVerbs,
  i => $bowlVerbs, j => $airVerbs, k => $moonVerbs, l => $paperVerbs,
  m => $spongeVerbs, n => $wolfVerbs, o => $roachVerbs, p => $treeVerbs,
  q => $childVerbs, r => $adultVerbs, s => $monkeyVerbs, t => $snakeVerbs,
  u => $axeVerbs, v => $scisVerbs, w => $fireVerbs, x => $sunVerbs,
  y => $rockVerbs}

def findVerb (winner, loser)
  $verbString = $vH[winner][loser]
  puts winner.capitalize + $verbString + loser + '.'
end

def falsify range
  for $slotNum in range do
    $rA[$slotNum] = 'false'
  end
end

def truthify range
  for $slotNum in range do
    $rA[$slotNum] = 'true'
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
  $rA[tie] = 'tie'

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
puts 'Welcome to RPS 25, where you play a version of Rock-Paper-Scissors with'
puts 'twenty-five possible gestures instead of three. Input one of the following'
puts 'gestures to see if you can defeat your opponent:'
puts $aB.to_s.delete('[').delete(']').delete('"')
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
  userGest = $aB[$userSlot]
  determine $userSlot
end

result = $rA[comSlot]

if $checkResult == 'valid'
  if result == 'true'
    findVerb userGest, comGest
    puts 'You won!'
  elsif result == 'false'
    findVerb comGest, userGest
    puts 'You lost...'
  elsif result == 'tie'
    puts 'You tied.'
  else
    puts 'Something went wrong... Try again.'
  end
end
puts ''
