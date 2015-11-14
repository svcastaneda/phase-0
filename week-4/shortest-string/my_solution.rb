# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  shortest_string = nil
  
  if list_of_words.length != 0
    shortest_string = list_of_words[0]
  end
  
  list_of_words.each do |s|
    if shortest_string.length > s.length
      shortest_string = s
    end
  end
  
  return shortest_string
  
end