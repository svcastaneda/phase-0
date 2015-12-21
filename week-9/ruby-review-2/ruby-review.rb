# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent .5 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# create an initializer with 1 argument and converts it to an array (in case if the user doesn't give an array)
# create a method called pez_count that returns the length of the flavors array
# create a method called see_all_pez that returns flavors array
# create a method called add_pez that takes an argument and pushes it to the flavors array
# create a method called get_pez that returns & removes first item in flavors array


# Initial Solution

class PezDispenser

# your code here!
  def initialize(flavors)
    @flavors = flavors.to_a
  end
  
  def pez_count
    @flavors.length
  end
  
  def see_all_pez
    @flavors
  end
  
  def add_pez(pez)
    @flavors << pez
  end
  
  def get_pez
    @flavors.shift()
  end

end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection

# What concepts did you review in this challenge?
# => I reviewed shifting in Ruby. I learned that shift is similar to pop,
# => except it returns & removes the first item in an array instead of the last.
#
# What is still confusing to you about Ruby?
# => I'm unsure of what %w does, but I'll do some research on it.
#
# What are you going to study to get more prepared for Phase 1?
# => I want to practice converting user stories into code.
# => One of the things I was confused about with this challenge
# => was how the order of the candies work. Is index 0 the next
# => candy you can get or is it the last index? When you add a
# => pez, are you adding it to the end or to the beginning?