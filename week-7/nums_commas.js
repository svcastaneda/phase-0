// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Joseph Scott.

// Pseudocode
// turn number into string, split it into an array, & reverse it
// iterate through array
// push each value to new output array
// if value's index+1 is divisible by 3, then push a comma
// return joined reverse output array


// Initial Solution
function separateComma(number) {
  output = [];
  temp = number.toString().split('').reverse();
  
  for (var i = 1; i <= temp.length; i++) {
    output.push(temp[i-1]);
    if (i%3 == 0) {
      output.push(',');
		};
	};
  
  if (output[output.length-1] === (",")) {
    output = output.slice(0,output.length-1);
  };
	
  output = output.reverse().join("");
  
	console.log(output);
}


// Refactored Solution
function separateComma(number) {
  output = [];
  temp = number.toString().split('').reverse();
	
	for (var start = 0; start<temp.length; start+=3) {
    output.push(temp.slice(start, start+3).reverse().join(""));
	};
	
  output = output.reverse().join(",");
	console.log(output);
};


// Your Own Tests (OPTIONAL)
separateComma(1569743);
separateComma(1);
separateComma(10);
separateComma(100);
separateComma(1000);
separateComma(10000);
separateComma(100000);
separateComma(1000000);
separateComma(10000000);



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// The original code was actually really similar to the initial Ruby solution, but using JavaScript syntax. The refactored version is not as short as the refactored Ruby version, but I think that it looks a lot more understandable because it uses a for loop, so you can clearly see what the code is doing.
//
// What did you learn about iterating over arrays in JavaScript?
// I learned that you can't iterate through the items in the arrays. Instead, you need to iterate through the indexes. 
//
// What was different about solving this problem in JavaScript?
// Ruby has a lovely method called each_slice that takes slices of strings and array and you can use the map method to join each slice with a comma. JavaScript forces you to write your own version of each_slice, which really forces you to think in a different way.
//
// What built-in methods did you find to incorporate in your refactored solution?
// Some of the new methods that we used included toString, split, reverse, slice, and join.
