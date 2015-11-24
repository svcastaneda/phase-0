# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an interger
# Output: if sides, return number of sides. if roll, return a random number in range 1 to sides.
# Steps:
  # 1) initialize number of sides. raise error if less than 1.
  # 2) write method that returns number of sides.
  # 3) write method that returns a random number from 1 to number of sides.


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides >= 1
      @sides = sides
    else
      raise ArgumentError.new("The number of sides must be greater than or equal to one.")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end



# 3. Refactored Solution







# 4. Reflection
# What is an ArgumentError and why would you use one?
# => An ArgumentError is when you raise a custom error when the value passed into the argument is not what you expected. You might use one so that the user may know what they did wrong instead of having to read the default error message.
#
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I used rand in order to return a random number. It was easy to implement because it uses a range that is inclusive of the upper bound.
#
# What is a Ruby class?
# => A Ruby class is when you create a group of methods that all pertain to that certain object.
#
# Why would you use a Ruby class?
# => You would want to use a Ruby class if you need to use the same methods over and over again for the same type of object.
#
# What is the difference between a local variable and an instance variable?
# => A local variable can only be used within that method. An instance variable can be used anywhere inside the class.
#
# Where can an instance variable be used?
# => Instance variables can be used anywhere inside the class.