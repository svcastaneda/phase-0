# Your Names
# 1) Bob Dorff
# 2) Saundra Castaneda

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3
#
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
#
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#
#   serving_size = library.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size
#
#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end
#
# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

# This pad is reserved for a student in the Chorus Frogs cohort. 



def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  if library.include?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size
  

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  elsif serving_size_mod.between?(1,4)
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{serving_size_mod} cookies."
  end
  
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection

# What did you learn about making code readable by working on this challenge?
# => I learned that it's important to have descriptive variable names
#
# Did you learn any new methods? What did you learn about them?
# => I learned about the between? method, which checks if a certain element is between 2 values. If the element you are checking is a number, the method checks if it is between 2 numbers. If you are checking a string, the method checks if it is between 2 string values (similar to checking the order in a dictionary).
#
# What did you learn about accessing data in hashes?
# => I learned/reviewed that in order to access data in a hash, you must call its key because hashes are not indexed.
#
# What concepts were solidified when working through this challenge?
# => How to create formatted strings (passing in custom variables), how to raise a custom error, and how to make descriptive variable names.
