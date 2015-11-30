# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # 1) Create two instance variables. One that generates a random number 0 to 4 to get a random index from BINGO and one that generates a random number 1 to 100.
  # 2) Return a string with a letter from BINGO and the random number.

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # 1) Check if the index value is equal to the number that was called.
  # 2) If they are equal, make new value equal to 'X'

# Display a column to the console
  #fill in the outline here
  # 1) Iterate through array of arrays.
  # 2) Print index of corresponding column (e.g. B -> 0, G -> 3)

# Display the board to the console (prettily)
  #fill in the outline here
  # 1) iterate through board
  # 2) Print each row

# Initial Solution

class BingoBoard

  def initialize(board)
    @board = board
  end
  
  def call
    @column = rand(0..4)
    @number = rand(1..100)
    
    return "BINGO"[@column] + @number.to_s
  end
  
  def check
    for row in @board
      if row[@column] == @number
        row[@column] = 'X'
      end
      p row
    end
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @board = board
  end

  def call
    @column = rand(0..4)
    @number = rand(1..100)

    return "BINGO"[@column] + @number.to_s
  end
  
  def display_board
    puts "========================"
    puts " B | I  | N  | G  |  O  "
    puts "========================"
    for row in @board
      row.each{|col| print col.to_s.ljust(2), " | "}
      puts
    end
    puts
  end

  def check
    for row in @board
      if row[@column] == @number
        row[@column] = 'X'
        display_board()
      end
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

(0..100).each do |x|
  new_game.call
  new_game.check
end


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => It was okay. I had a little difficulty wording everything, but I think I did an okay job.
#
# What are the benefits of using a class for this challenge?
# => Classes allow you to reuse the same methods over and over again. They also allow you to group methods together based on the type of object you need to use them for. For example, if you had a program where one type of desired object required the quadtratic formula and another type of desired object didn't need it, you could simply create a class of formulas. In this case, we needed to use the call and check method multiple times. 
#
# How can you access coordinates in a nested array?
# => You can simply put in two specific indexes. For example, if you wanted to access "get this string" in an array named test that is equal to [0, 1, ["a", "b", "c", ["get this string"], "d"], 2, 3], you would simply put test[2][3][0]. I like to first identify where the desired data is, then work outer -> inner. Every time I hit a nested data structure, I add another index to the chain. Another way to do it is by working inner -> outer.
#
# What methods did you use to access and modify the array?
# => I created an instance variable to determine which index/column to look under, looped through the elements (which were all arrays) in the board, and called the index/column inside the nested arrays.
#
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# => I learned about the ljust method. This was for aesthetics. It basically makes an array a certain length. If the string is longer, it cuts it off to the index equal to desired length - 1. If the string is shorter, it pads the string with a given string (in this case, it was a space) to the end, making it left-justified. It is called by STRING_VARIABLE.ljust(STRING_LENGTH, OPTIONAL_STRING_PADDING). For example, if you have the string "abc" and want to make it 6 characters long and fill the added spaces with a period, you would do "abc".ljust(6, ".") .
#
# How did you determine what should be an instance variable versus a local variable?
# => If I needed to use a certain variable in a different method within the class, I made it into an instance variable. Otherwise, I left it as a local variable.
#
# What do you feel is most improved in your refactored solution?
# => I added an extra method that would print a prettier version of the board. It makes the board easier to read and understand.