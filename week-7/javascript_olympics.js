// JavaScript Olympics

// I paired with David Ma on this challenge.

// This challenge took me 1 hour.

// Bulk Up

// 0.  Create an array of athletes
// 1.  Create function that takes an array of athletes 
// 2.  Create win property that prints "athlete won"

var mj = {name: 'Michael Jordan', events: 'basketball'}
var dr = {name: 'Derrick Rose', events: 'basketball'}
var sw = {name: 'Serena Williams', events: 'tennis'};

var athletes = [mj, dr, sw];

// array of objects w/ properties name & event
// function needs to add a win property (prints #NAME won the #EVENT)

var add_win = function(array) {
  // loop through atheletes and add new property (win)
  for (var i = 0; i < array.length; i++) {
    array[i].win = array[i].name + " wins at " + array[i].events;
  };
};

// add_win(athletes);
// console.log(athletes);


// Jumble your words

// 0. define a method that takes in a string
// 1. split string by "" -- add to array
// 2. reverse array
// 3. return reversed array, joined with ""


function reverse_string(string) {
  var array = string.split("");
  array.reverse();
  return array.join("");
};

// console.log(reverse_string("Chicago"));
// console.log(reverse_string("I like ice cream!"));
// console.log(reverse_string("Kobe Bryant just retired"));
// console.log(reverse_string("racecar"));

// 2,4,6,8

// 1. Define function that accepts an array
// 2. Iterate through the array
// 3. Add only elements that fulfill our rule of being even to the resulting array
// 4. Return resulting array


function isEven(value) {
  if (value % 2 == 0)
    return value
  else return null
}

// console.log([1,2,3,4,5,6,7,8].filter(isEven));
// console.log([2,4,6,8].filter(isEven));
// console.log([1,3,5,7].filter(isEven));
// console.log([100, -100, 4, 5, 6, 12, 13, 17].filter(isEven));

function isEven2(array) {
  var new_array = []
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0)
      new_array.push(array[i])
  };

  return new_array;
};

// console.log(isEven2([1,2,3,4,5,6,7,8]));
// console.log(isEven2([2,4,6,8]));
// console.log(isEven2([1,3,5,7]));
// console.log(isEven2([100, -100, 4, 5, 6, 12, 13, 17]));



// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


// Athlete(name, age, sport, quote)

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// I think I have a better understanding on how JavaScript objects work. This is because
// we had to know how to access JS object properties and how to add JS properties. I also
// think that I have a better understanding of how to iterate through arrays. Iterating
// through arrays is different in JS because you can't iterate through the items, but rather 
// through the indexes. This means that in order to get elements inside of an array, you
// must call it by its index.
//
// What are constructor functions?
// Constructor functions are similar to Ruby's initalize method in classes. It can take
// in arguments and set callable properties.
// 
// How are constructors different from Ruby classes (in your research)?
// Constructor functions take in arguments and make them attributes of instances. Instead of
// using the @ symbol, JavaScript uses self (e.g. Ruby: @thing -> JavaScript: self.thing).