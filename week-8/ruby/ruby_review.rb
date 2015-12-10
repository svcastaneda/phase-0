# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# 1. define a method that takes in a string argument
# 2. split string by spaces into an array
# 3. iterate through array
# 4. for each string item in array, reverse it
# 5. return array joined with a space


# Initial Solution
def reverse_words(string)
  words = string.split()
  words.each_with_index { |word, index| words[index] = word.reverse() }
  p words.join(" ")
end

# Refactored Solution
def reverse_words(string)
  words = []
  string.split().map { |word| words << word.reverse() }
  p words.join(" ")
end


# Reflection
# What concepts did you review or learn in this challenge?
# => I reviewed how to iterate through arrays, how to use the map method, and how to append to an array. I learned a new method called each_with_index, which allows you to access both the index number and the value in that index.
#
# What is still confusing to you about Ruby?
# => I'm still trying to understand how idioms work.
#
# What are you going to study to get more prepared for Phase 1?
# => I'm trying to improve my refactoring skills.