puts 'Hey there! You know, I\'ve been wondering. What\'s your favorite number?'
  fav = gets.chomp
puts fav + '? ...Oh, cool.'
puts 'Don\'t you think that\'s a bit... low? I mean, it\'s YOUR favorite, but.'
  better_fav = fav.to_i + 1
puts 'How about ' + better_fav.to_s + '? I like that one a lot better!'
puts 'Just something to think about, haha.'
