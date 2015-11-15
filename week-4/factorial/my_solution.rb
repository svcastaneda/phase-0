# Factorial

# I worked on this challenge with: Alex Mitzman.


# Your Solution Below
def factorial(number)
  # Your code goes here
  answer = 1 

  if number < 0
    return nil
  elsif number <= 1
    return answer
  else
    for num in (1..number)
      answer *= num
    end
  end
  
  return answer
end