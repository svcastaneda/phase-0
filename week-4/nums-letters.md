1.  What does puts do?
		
    + puts is a commands that stands for "put string". It displays a result or value onto the console. It is *not* the same as the print command. puts adds a new line at the end, while print does not.

2.	What is an integer? What is a float?

    + An integer is a whole number (e.g. 0, 1, 2, 3). A float is a number with at least one decimal place (e.g. 0.0, 1.1, 2.2, 3.3).

3.	What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

    + At least one number needs to be a float in order to make the output a float instead of an integer.  
    + That being said, float division returns the actual answer to a division problem. For example, __5.0 / 2__ will return __2.5__.
    + Integer division will return the number of times that the divisor fits in the number. Another way to think of it is that the remainder is disregarded. For example, __5 / 2__ will return __2__.


```
hoursInAYear = 24 * 365
```

```
minInADecade = 60 * 24 * 365 * 10
```

+ [Defining Variables](https://github.com/svcastaneda/phase-0/blob/master/week-4/defining-variables.rb)
+ [Simple String](https://github.com/svcastaneda/phase-0/blob/master/week-4/simple-string.rb)
+ [Basic Math](https://github.com/svcastaneda/phase-0/blob/master/week-4/basic-math.rb)

----------------------------------------------------------------

1.  How does Ruby handle addition, subtraction, multiplication, and division of numbers?

    + Addition: Uses the + operator to add numbers. If at least one number is a float, the number that is returned will also be a float.
    + Subtraction: Uses the - operator to subtract numbers. If at least one number is a float, the number that is returned will also be a float.
    + Multiplication: Uses the * operator to multiply numbers. If at least one number is a float, the number that is returned will also be a float.
    + Division: Uses the / operator to divide numbers. If at least one number is a float, the number that is returned will also be a float and will return the true answer. If there are no floats, then Ruby will discard any remainders.
		
    Ruby follows the PEMDAS (parentheses, exponents, multiplication and division, and addition and stubtraction) rules.
		
2.  What is the difference between integers and floats?

    + Integers: whole numbers (1, 2, 3)
    + Floats: number with at least one decimal place (1.0, 2.1, 3.2)
		
3.  What is the difference between integer and float division?
	  
    + At least one number needs to be a float in order to make the output a float instead of an integer.  
    + Float division returns the actual answer to a division problem. For example, __5.0 / 2__ will return __2.5__.
    + Integer division will return the number of times that the divisor fits in the number. Another way to think of it is that the remainder is disregarded. For example, __5 / 2__ will return __2__.
		
4.  What are strings? Why and when would you use them?

    + Strings are an iterable and mutable data type in Ruby that hold character values. Iterable means that you can retrieve certain indexes and loop through the characters. Mutable means that you can change them. You would use strings when you need to have a variable with character values that don't need to be used for math operations. For example, you can have a string for a name or a zip code.		
    
    + Examples of when you might use a string:

        - name = "Saundra Castaneda"
        - zipCode = "60618"
    
    + Examples of when you might use a number:

        - age = 19
        - numDogs = 3

5.  What are local variables? Why and when would you use them?
    + Local variables are variables that can be used only in that particular block on code. A block of code can be a function, class, loop, or something similar.
    + Most of the time, you will want to use local variables rather than global variables because it would help your program run faster. Local variables are easier to access because your the computer won't have to put in as much time or effort to search for it. Global variables are harder to find because they live outside of the function/class/loop.
    + You would use local variables if you only need them for that particular block or if you need a temporary. For example, you might want to write a function that adds the first 10 numbers. You could define a local variable called __total__ where you would loop through the numbers and add each one to __total__.
    + You would also use local variables in case if you need to reuse that same variable name elsewhere. Taking the __total__ example again, you might write another function that multiplies the first 10 numbers. You can use the same __total__ variable name here without changing __total__ in the other function.
		
6.  How was this challenge? Did you get a good review of some of the basics?
    + I thought this challenge was easy. It was good review on the different ways you can manipulate and change a string in Ruby. It also made me learn about strings, integers, and floats on a somewhat deeper level.