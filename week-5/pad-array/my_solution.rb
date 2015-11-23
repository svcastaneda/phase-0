# Pad an Array

# I worked on this challenge with: Josephp Scott

# I spent 1 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?  array, minimum size for array, and value to pad the array with
# What is the output? (i.e. What should the code return?) return an array that's padded with the value.
# What are the steps needed to solve the problem?
# 1) calculate difference in the length of the array and the minimum size
# 2) add value x amount of times to array
# 3) return array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    diff = min_size - array.length
    array.concat([value] * diff)
  end
  
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  output = array.clone
  if array.length < min_size
    diff = min_size - output.length
    output += Array.new(diff, value)
  end
  
  return output
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array.fill(value, array.length..(min_size-1))
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  return array.clone.fill(value, (array.length)..(min_size-1))
end
# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# => Yep!
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Mostly. We had trouble figuring out why our solution wasn't working for one of the tests, but figured out that it was returning the same object ID. Figured out that we needed to clone the array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => No. It originally returned the same object ID. We looked up what an object ID was, and found that we needed to clone the given array in order to get a new object ID.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We found a method called fill. Basically, it does exactly what we want, except we had to make sure that it filled the array up to where the length was equal to min_size and not up to the index equal to min_size.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think it's pretty readable and has clear variable names.
# What is the difference between destructive and non-destructive methods in your own words?
# => Destructive methods modify the original objects and then return it while non-destructive methods take copies/clones of the original objects and modify those instead.