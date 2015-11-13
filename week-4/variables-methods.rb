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
<<<<<<< HEAD
print "That's nice, but ", better, " is bigger and better."


# How do you define a local variable?
#   - You define a local variable using letters, numbers, and underscores. They must begin with a letter or underscore and cannot have spaces.
#   - There are 2 commonly used naming conventions. There is camelcase where you capitalize the first letter of a word in the name (anExampleOfCamelCase) and under_score where you seperate words with underscores (an_example_of_under_score_case).
#   - While you can give variables whatever name you want, you should try to give it a name that clearly says what it is used for. For example, you can name a variable x that is used to store a zip code. If someone else were to look at your code, they would have to look for where x is defined to see what sort of information it stores. You should name it something like zipCode instead.
# How do you define a method?
# What is the difference between a local variable and a method?
#   - Local variable: Stores a data type that can be used in only in the method or loop that it is defined.
#   - Method: Takes in argument(s). You can use the arguments to return a custom output. This is easier than creating many variables that hold similar information. For example, you can write a method for the quadratic formula instead of calculating the formula repeatedly in many different variables.
# How do you run a ruby program from the command line?
#   - Run a program: ruby NAME_OF_FILE
# How do you run an RSpec file from the command line?
#   - rspec NAME_OF_FILE
# What was confusing about this material? What made sense?
#   - The gets.chomp was a little weird at first. What it does is not obvious. I would have assumed that it is a method that retrieves some sort of information and breaks it up. I'm more used to using Python. The way to get the same result is by writing input().strip()
#   - Naming variables, using various operators, knowing the difference between floats and integers, and writing methods were all easy.











=======
print "That's nice, but ", better, " is bigger and better."
>>>>>>> 81c64a7a02f9c970cac6f522d3a361b70beaec5e
