# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?: a positive integer
# What is the output? (i.e. What should the code return?): a positive integer that separates every 3 integers with a comma.
# What are the steps needed to solve the problem?
# define the method with one argument
  # create an empty string variable
  # iterate through integer, but as a reversed string
    # add the number to the string
    # if index%3, then add a comma to the string
  # reverse output
  # if output starts with a comma, take it out
  # return the output string variable

# 1. Initial Solution
def separate_comma(num)
  output = ""
  temp = num.to_s.reverse
  
  for c in (1..(temp.length))
    output += temp[c-1]
    if c%3 == 0
      output += ','
    end
  end
  
  output = output.reverse
  
  if output.start_with?(",")
    output = output[1..(output.length-1)]
  end

  return output
end

# 2. Refactored Solution
def separate_comma(num)
  temp = num.to_s.reverse.split("")
  
  output = temp.each_slice(3).map(&:join).join(",").reverse
  
  return output
end

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
  # My original thought was to turn the number into a string, reverse it, split the string into an array with each individual integer, iterate through the array, insert a comma into the array after every 3 number, and returning the reversed string with everything joined together. But, I found that to be too difficult because I wasn't sure how I would be able to keep track of when I reached every third number (probably could've done this with a counter). Instead, I decided to turn the number into a string, reverse it, iterate through it, and add a comma every 3 numbers, then return the result (after reversing the string back). I came up with this idea because I knew that if I didn't reverse the number string, then I would risk placing the commas in the wrong spots (e.g. 100,00 instead of 10,000). I decided to iterate through the indexes instead of the actual index values because it was easier to check if it was actually the third number.
# Was your pseudocode effective in helping you build a successful initial solution?
  # The pseudocode helped me think about flow control to plan everything out before writing any code.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  # I learned about map idioms and the each_slice method. A map idiom basically allows you to apply a certain method to each item in your iteration. The each_slice method lets you iterate through certain slices in an array. In this case, I used it to get 3 items at a time and applied the join method to add the commas.
# How did you initially iterate through the data structure?
  # I initially iterated through the indexes by using a range.
# Do you feel your refactored solution is more readable than your initial solution? Why?
  # If you know about map idioms, then I think the refactored solution would be more readable because it's less code and easier to follow. Otherwise, the initial solution is more beginner friendly.