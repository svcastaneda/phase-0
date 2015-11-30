# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! {|element|
  if element.kind_of?(Array)
    element.map! {|inner| inner += 5}
  else
    element += 5
  end
}

# p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! {|element|
  if element.kind_of?(Array)
    element.map! {|inner|
      if inner.kind_of?(Array)
        inner.map! {|meta| meta += "ly"}
      else
        inner += "ly"
      end
    }
  else
    element += "ly"
  end
}

p startup_names

# What are some general rules you can apply to nested arrays?
# => You can access data by chaining indexes.
# => e.g. test = [0, 1, 2, [4, 5, [6, 7], 8], 9, 10, [11]]
# =>      to get 7, you would call test[3][2][1]
# =>      [3][2][1] is the chain of indexes.
#
# What are some ways you can iterate over nested arrays?
# => You can use the enumberable methods like each and map to check if an element is an array or hash. If it is, then you can add a nested loop to iterate through the nested array/hash. You can also probably use recursion to do this so that you can make your code DRY.
#
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => For release 3 and the bonus, we used map! to make a destructive loop. We used it differently. Instead of using one line like in the previous weeks, we added if/else statements and a nested map! loop.
