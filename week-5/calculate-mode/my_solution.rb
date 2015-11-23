# Calculate the mode Pairing Challenge

# I worked on this challenge with: Joseph Scott

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) the value(s) that appears the most inside the array
# What are the steps needed to solve the problem?
# 1) create an empty hash
# 2) iterate through the array
# 3) if item is in the hash, add 1 to its value. else, make value equal to 1.
# 4) return an array with all of the keys with the highest value

# 1. Initial Solution
def mode(array)
  freq = {}
  array.each do |item|
    if freq.include?(item)
      freq[item] += 1
    else
      freq[item] = 1
    end
  end
  
  return freq.select{|k,v| v==freq.values.max}.keys
end


# 2. Refactored Solution
def mode(array)
  freq = array.inject({}) {|k,v| k[v] = array.count(v); k}
  return freq.select{|k,v| v==freq.values.max}.keys
end



# 3. Reflection
# Which data structure did you and your pair decide to implement and why?
# => We decided to use a hash to keep track of the number of times a value appeared in the array. We did this because we needed to make sure that all of the modes would be returned.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# => what?
# What issues/successes did you run into when translating your pseudocode to code?
# => We had some difficulties trying to figure out how to return the keys that had the highest value in the hash.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We used the each method to iterate through the array. We found that you can simply find the maximum value using HASH_NAME.values.max, use the select method to find which keys had values equal to the max, and then return the keys.