# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
	# print the hash
# output: hash: item=>quanity

def create_list(string)
	temp = string.split()
	grocery_list = {}
	temp.each do |item|
		grocery_list[item] = 1
	end
	
	p grocery_list
end




# Method to add an item to a list
# input: item name and optional quantity
# steps: 1) check if item is already in the hash
         # 2) if not, add it with quantity if given. else, add default.
         #			 3) if item is in the hash, then add value to hash
# output: {Item Name}: {quantity}

def add_item(hash, name, quantity=1)
	if hash.include?(name)
		hash[name] += quantity
	else
		hash[name] = quantity
	end
	
	p hash
end


# Method to remove an item from the list
# input: item name
# steps: 	1) check if the item is in the hash
#					2) if it is, then delete it from hash. otherwise, return message to user that item isn't in the list.
# output: print message: {item name} has been removed.

def remove_item(hash, name)
  if hash.include?(name)
    hash.delete(name)
  end
  
  p hash
end


# Method to update the quantity of an item
# input: item name, new quantity
# steps:	1) check if item is in the hash
          # 2) if it is, then replace current value with new one. otherwise, add item with quantity to hash using add method.
# output: print message: {item name} now has {quantity} items.
def update_quantity(hash, name, quantity=1)
	if hash.include?(name)
		hash[name] = quantity
  end
  
  p hash
end


# Method to print a list and make it look pretty
# input: hash
# steps:	1) iterate through the hash and grab the keys & values
# output:	1) Name: quantity
#         2) Name: quantity.....
def print_list(hash)
  count = 1
  hash.each do |key, value|
    p count.to_s + ") " + key + ": " + value.to_s
    count += 1
  end
end

hash = create_list("carrots apples cereal pizza")
add_item(hash, "lemonade", 2)
add_item(hash, "tomatoes", 3)
add_item(hash, "onions", 1)
add_item(hash, "ice cream", 4)
remove_item(hash, "lemonade")
update_quantity(hash, "ice cream", 1)
print_list(hash)


# if hash.include?(item)
# hash[item] += 1
# end
# hash[item] += 1 if hash.include?(item)
# ternary operator
# -----------
# hash.include?(item) ? hash[item] += 1 : hash[item] = quantity
# gsperka@gmail.com



# What did you learn about pseudocode from working on this challenge?
# => I learned that pseudocode helps you tackle a problem more easily because you're able to formulate a sort of hypothesis as to how you can solve a problem.
#
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => I only used hashes because I needed to map certain information to each item in the given array.
#
# What does a method return?
# => A method returns a data type. This can be anything like an object, hash, array, string, tuple, etc.
#
# What kind of things can you pass into methods as arguments?
# => You can pass any data type into an array.
#
# How can you pass information between methods?
# => You can create a global variable, create a class that uses self to define variables associated with the object, or call another method.
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => I think my knowledge on iteration has been solidified. I'm still trying to master how to use ternary operators.