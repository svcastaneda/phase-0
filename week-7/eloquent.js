// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var age = 19;
age += 1;

console.log(age);


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board


for (var num = 1; num <= 100; num++) {
	if (num%5==0 && num%3==0) {
		console.log("FizzBuzz")
	}
	else if (num%5==0) {
		console.log("Buzz")
	}
	else if (num%3==0){
		console.log("Fizz")
	}
	else {
		console.log(num)
	};
};

// Functions

// Complete the `minimum` exercise.
var min = function(x, y) {
	if (x < y) {return x}
	else {return y};
};

console.log(min(0,10));
console.log(min(0,-10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Saundra",
	age: 20,
	favorite_foods: ["pizza", "caffiene", "cheese enchiladas"],
	quirk: "Loves baking. Doesn't like sweets."
};

console.log(me);