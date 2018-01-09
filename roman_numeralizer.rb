puts 'Input an integer between 0 and 4000 and press "enter" to translate it into Roman numerals.'

integer = gets.chomp.to_i

def numeralize integer
  m = 0
  d = 0
  c = 0
  l = 0
  x = 0
  v = 0
  i = 0

  val = [1000, 500, 100, 50, 10, 5]

  m = integer/(val[0])
      integer = integer % (val[0])
      d = integer/(val[1])
          integer = integer % (val[1])
          c = integer/(val[2])
              integer = integer % (val[2])
              l = integer/(val[3])
                  integer = integer % (val[3])
                  x = integer/(val[4])
                      integer = integer % (val[4])
                      v = integer/(val[5])
                          integer = integer % (val[5])
                            i = integer

  m2 = 0
  d2 = 0
  c2 = 0
  l2 = 0
  x2 = 0
  v2 = 0

  if c == 4 && d == 1
    d = 0
    c = 1
    m2 = 1
  elsif c == 4
    c = 1
    d2 = 1
  end

  if x == 4 && l == 1
    l = 0
    x = 1
    c2 = 1
  elsif x == 4
    x = 1
    l2 = 1
  end

  if i == 4 && v == 1
    v = 0
    i = 1
    x2 = 1
  elsif i == 4
    i = 1
    v2 = 1
  end

  puts ('M'*m) + ('D'*d) + ('C'*c) + ('M'*m2) + ('D'*d2) + ('L'*l) + ('X'*x) + ('C'*c2) + ('L'*l2) + ('V'*v) + ('I'*i) + ('X'*x2) + ('V'*v2)
end

numeralize integer
