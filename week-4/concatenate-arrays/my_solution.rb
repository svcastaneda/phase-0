# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  # newArray = []
  
  # array_1.each do |item|
#     newArray.push(item)
#   end
#
#   array_2.each do |item|
#     newArray.push(item)
#   end
  newArray = array_1.concat(array_2)
  
  return newArray
end