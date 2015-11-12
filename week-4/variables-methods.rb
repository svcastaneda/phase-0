puts "What is your first name?"
firstName = gets.chomp

puts "What is your middle name?"
middleName = gets.chomp

puts "What is your last name?"
lastName = gets.chomp

print "Hello, ", firstName, " ", middleName, " ", lastName , "!"



puts "What is your favorite number?"
favNum = gets.chomp.to_i
better = favNum + 1
print "That's nice, but ", better, " is bigger and better."