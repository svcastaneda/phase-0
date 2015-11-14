# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input and expecting keyword_end
# 5. Where is the error in the code?
# => After the while loop. Line 16 ends the while loop, but the method itself is never closed.
# 6. Why did the interpreter give you this error?
# => Because the method was not closed.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => it says that it is an undefined local variable or method
# 4. Where is the error in the code?
# => If south_park is a local variable, it needs to be assigned a value. If it is a method, it needs to be defined.
# 5. Why did the interpreter give you this error?
# => south_park is not a defined variable, method, or object.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => cartman is an undefined method, which means that the method cartman() does not exist.
# 4. Where is the error in the code?
# => the method cartman has not been created yet.
# 5. Why did the interpreter give you this error?
# => because it cannot find a method with that name and does not know what you expect it to do.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end
#
# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => In line 69. 'I hate Kyle' should be deleted
# 5. Why did the interpreter give you this error?
# => 1 argument was given, but the function doesn't take in any

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end
#
# cartman_says

# 1. What is the line number where the error occurs?
# => 88
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments given (0 for 1)
# 4. Where is the error in the code?
# => In line 88, cartman_says should pass in an argument
# 5. Why did the interpreter give you this error?
# => cartman_says takes in 1 argument, but none were given when the method was called.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end
#
# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => In line 109, 1 more argument should be passed in.
# 5. Why did the interpreter give you this error?
# => cartmans_lie takes in 2 arguments, but only 1 was given when it was called.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => string can't be coerced into fixnum
# 4. Where is the error in the code?
# => 5 and the string should be switched around.
# 5. Why did the interpreter give you this error?
# => You can multiply a string by a number, but you can't multiply a number by a string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => in the denominator
# 5. Why did the interpreter give you this error?
# => It is nott mathematically possible to divide something by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load the file
# 4. Where is the error in the code?
# => The string "cartmans_essay.md" is the error.
# 5. Why did the interpreter give you this error?
# => The file cartmans_essay.md does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# 
# Which error was the most difficult to read?
#   - I think the first error was the trickiest because the method was trying to find an 'end' that would close it, so it said that the error was on the very last line.
# How did you figure out what the issue with the error was?
#   - Since it said the error was at the very end of the program and said it expected the keyword 'end', I looked for what needed to be closed. I saw that the while loop didn't have an 'end' that lined up and knew that was the mistake.
# Were you able to determine why each error message happened based on the code?
#   - Yup! The error type names really helped.
# When you encounter errors in your future code, what process will you follow to help you debug?
#   - I think looking at the line, error type, and then hints will help me find bugs more easily. It also helps if you write tests for you code that check if your code runs correctly.
# 