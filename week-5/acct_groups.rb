# 1) Define a method that take an array.
# 2) Shuffle the given array.
# 3) Check length of array.
# 4) Check if array is divisible by 3, 4, or 5.
# 5) Return an array of arrays that all have at least 3 students.

def group_maker(list)
  list.shuffle!
  groups = []
  if (list.length%5) >= 3
    groups.concat(list.each_slice(5).to_a)
  elsif (list.length%4) >= 3
    groups.concat(list.each_slice(4).to_a)
  else
    groups.concat(list.each_slice(3).to_a)
  end
  return groups
end


# What was the most interesting and most difficult part of this challenge?
# => I thought that getting groups of at least 3 was the most difficult part. In order to do that, I checked if the smallest group possible would be 3 by using the modulo.
#
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => I think so because. I try to break the logic down into small, doable steps.
#
# Was your approach for automating this task a good solution? What could have made it even better?
# => Not sure if this is the best solution, but it certainly does cover all of the different cases. I probably could have used map or inject, but didn't have time.
#
# What data structure did you decide to store the accountability groups in and why?
# => I decided to use an array to store the groups because I knew that I didn't need any other information.
#
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => I actually didn't refactor my solution, but I learned about shuffle!