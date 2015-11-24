# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: boolean
# Steps:
  # 1) check if input is valid (16 digits)
  # 2) declare sum variable
  # 3) iterate end -> start
  # 4) add every number to sum:
  #    - if odd index, double number, add each digit to sum.
  # 5) if sum is multiple of 10, return true. else, return false.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    @card_number = card_number
    
    if is_valid? == false
      raise ArgumentError.new("Credit card number must be exactly 16 digits long.")
    end
  end
  
  def is_valid?
    @card_number.to_s.length == 16
  end
  
  def check_card 
    sum = 0
    odd = false
    card_number = @card_number
    
    while card_number > 0
      current_digit = card_number%10
      card_number /= 10
      
      if odd
        current_digit *= 2
        sum += (current_digit/10) + (current_digit%10)
      else
        sum += current_digit
      end
      
      odd = !odd
    end
    

    sum%10 == 0
    
  end
  
end

# card = CreditCard.new(4563960122001999)
# card.check_card

# Refactored Solution
class CreditCard
  def initialize(card_number)
    @card_number = card_number
    
    if @card_number.to_s.length != 16
      raise ArgumentError.new("Credit card number must be exactly 16 digits long.")
    end
  end
  
  def check_card 
    sum = 0
    even_index = false
    card_number = @card_number
    
    while card_number > 0
      current_digit = card_number%10
      card_number /= 10
      
      if even_index
        current_digit *= 2
        sum += (current_digit/10) + (current_digit%10)
      else
        sum += current_digit
      end
      
      even_index = !even_index
    end

    sum%10 == 0
    
  end
  
end







# Reflection