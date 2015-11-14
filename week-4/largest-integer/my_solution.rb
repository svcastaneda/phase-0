# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  largest_integer = nil
  
  if list_of_nums.length != 0
    largest_integer = list_of_nums[0]
  end
  
  list_of_nums.each do |num|
    if largest_integer < num
      largest_integer = num
    end
  end
  
  return largest_integer
end