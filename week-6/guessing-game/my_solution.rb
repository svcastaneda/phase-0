# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 0.75 hours on this challenge.

# Pseudocode

# Input: an integer
# Output: guess: symbol that says if the guess is high, low, or correct. solved?: a boolean that says if the game has been solved.
# Steps:
  # 1) initialize object with an answer that player must guess.
  # 2) create instance variables for answer and solved.
  # 3) define method for guess that takes in a number. says if the guess is high, low, or correct. Instance variable for solved changes to false if guess is high or low. 
  # 4) create boolean method that says if the game has been solved based on the last guess made.


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end

  # Make sure you define the other required methods, too
  def guess(number)
    if number > @answer
      @solved = false
      return :high
    elsif number < @answer
      @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end
  
  def solved?
    return @solved
  end
end


# Refactored Solution
# I'm sure there's a better way to write the guess method, but I didn't have time to do more research.





# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => 
#
# When should you use instance variables? What do they do for you?
# => You should use instance variables if and when you need to use them in other methods and/or need to return it.
#
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Flow control is basically controlling how data is passed along and shared. I didn't struggle with control flow.
#
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => I think code requires symbols because the only number evaluation (high or low) you needed to remember was the previous guess. There was no need to remember every guess made. Symbols are an immutable string-like datatype, meaning that they can only be overwritten.  Because of this, symbols allow a program to use less memory, which makes the program run faster. On the other hand, regular strings are mutable, meaning that they can be modified.