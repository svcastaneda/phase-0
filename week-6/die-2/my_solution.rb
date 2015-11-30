# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent .5 hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: returns a random item from the given array.
# Steps: 
  # 1) initialize Die object.
        # a) check if given array is empty.
        # b) if empty, raise an error. else, create instance variable.
  # 2) define method that returns the number of sides on the die (length of array).
  # 3) define a method that returns a random index in the array using rand.


# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("labels array must contain at least one element.")
    else
      @labels = labels
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(sides())]
  end
end



# Refactored Solution



# Reflection
# I know that I don't need to include return at the end of each method, but I still do it for readability (I find it to be clearer to me if I include return).


# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# => Last week, I simply had to return the numer that was passed in to give the number of sides and a random number in the range of 1 to the given number for the roll. This time, I had to return the length of the array for the number of sides and I used rand to return a random index in the array. Other than that, they were basically the same thing.
#
# What does this exercise teach you about making code that is easily changeable or modifiable?
# => This exercise taught me that each method inside a class object should be a short block of code and serve only one purpose. I also learned that you can call other methods in the class when defining a new method.
#
# What new methods did you learn when working on this challenge, if any?
# => Didn't learn any new methods.
#
# What concepts about classes were you able to solidify in this challenge?
# => I think I have a good grasp on how classes work.
