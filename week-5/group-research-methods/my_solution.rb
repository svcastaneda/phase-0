# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # output = []
  # source.each do |item|
  #   if item.to_s.include?(thing_to_find.to_s)
  #     output.concat([item])
  #   end
  # end
  #
  # return output
  
  source.map(&:to_s).select {|item| item.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|key,value| thing_to_find == value}.keys
end

# Identify and describe the Ruby method(s) you implemented.
# I used a map idiom for the first method and select for the second method. The map idiom turned everything into a string and then selected all items that had the thing_to_find. Select in the second method iterated through each item in the hash, looked for the keys that had a value that matched thing_to_find, then returned the key.
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |word| word.to_s.include? thing_to_delete }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|key, value| key == thing_to_delete }
end

# Identify and describe the Ruby method(s) you implemented.
# Both methods used delete_if. In the first one, it iterated through the given array and then deleted all items that included the thing_to_delete. The second one basically does the same thing, except it deletes all keys with the value that contains thing_to_delete.
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#