#Attr Methods

# I worked on this challenge by myself

# I spent 1 hour on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  
  def initialize
    @name = "Saundra"
  end
end


class Greetings
  def initialize
    @person = NameData.new
  end
  
  def hello
    puts "Hello #{@person.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection

# release_1
# What are these methods doing?
# => initialize initilizes a name, age, and occupation for an object created with the Profile class. print_info prints the page, name, and occupation with lines in between. what_is_age returns the instance variable @age. change_my_age takes in an argument and updates the @age instance variable. what_is_name returns the instance variable @name. change_my_name takes in an argument and updates the @name instance variable. what_is_occupation returns the instance variable @occupation. change_my_occupation takes in an argument and updates the @occupation instance variable.
#
# How are they modifying or returning the value of instance variables?
# => They are writing over the instance variable's value with the new value that is passed in.



# release_2
# What is a reader method?
# => Reader methods allow you to get the value of an instance variable of an object outside of its class definition.
#
# What is a writer method?
# => Writer methods allow you to change the value of an instance variable of an object outside of its class definition after initializing the object.
#
# What do the attr methods do for you?
# => attr_accessor: Allow you to get the value or change the value of an instance variable instead of writing 2 different methods.
# => attr_reader: Allow you to get the value of an instance variable instead of writing a method.
# => attr_writer: Allow you to change the value of an instance variable instead of writing a new method that takes in an argument.
#
# Should you always use an accessor to cover your bases? Why or why not?
# => No because sometimes you don't want the user to be able to get the value of an instance method, but might want to allow them to change it and vice versa.
#
# What is confusing to you about these methods?
# => I want to know if there are any cases where you might not want to use any of the attr methods and would create one yourself instead.



# release_3
# What changed between the last release and this release?
# => attr_writer was added for age and the method change_my_age was commented out.
#
# What was replaced?
# => the method change_my_age was replaced by the attr_writer for age.
#
# Is this code simpler than the last?
# => Waaaaay simpler and a lot cleaner.
