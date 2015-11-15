# I worked on this challenge with: Cole K.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if ([a, b, c]).include?(0)
    return false
  elsif (a+b < c) || (b+c < a) || (a+c < b)
    return false
  else
    return true
  end
end