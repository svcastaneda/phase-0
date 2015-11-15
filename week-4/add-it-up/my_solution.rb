# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Alex Mitzman.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of all numbers
# Steps to solve the problem.
# define method
  # create variable for total
  # iterate through each number in array
    # add number to total
  # return total

# 1. total initial solution
def total(numbers)
  total = 0
  numbers.each do |num|
    total += num
  end

  return total
end


# 3. total refactored solution
def total(numbers)
  numbers.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: returns a sentence of all strings combined. Starts with a capital letter and ends with a period.
# Steps to solve the problem.

# initialize method
  # output variable equal to empty string
  # iterate through strings array
    # if first item, capitalize it
    # otherwise, add it to string
  # return output with period at the end

# 5. sentence_maker initial solution
def sentence_maker(strings)
  return strings.join(' ').capitalize + '.'
end


# 6. sentence_maker refactored solution













