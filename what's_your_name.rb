puts 'Hi! What\'s your name?'
firstname = gets.chomp
puts 'And ' + firstname + ' is your first name, right? What\'s your last name?'
lastname = gets.chomp
puts firstname + ' ' + lastname + ', huh? Nice.'
puts ''
puts 'Wait, shit, we forgot your middle name. And that is...?'
middlename = gets.chomp
puts 'Ah, there we go. ' + firstname + ' ' + middlename + ' ' + lastname + '. Do I sound like your mom or what?'
