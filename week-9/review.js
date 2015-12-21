var STATE_DATA = {
  "Alabama" : {"population_density": 94.65, "population": 4822023},
  "Alaska" : {"population_density": 1.1111, "population": 731449},
  "Arizona" : {"population_density": 57.05, "population": 6553255},
  "Arkansas" : {"population_density": 56.43, "population": 2949131},
  "California" : {"population_density": 244.2, "population": 38041430},
  "Colorado" : {"population_density": 49.33, "population": 5187582},
  "Connecticut" : {"population_density": 741.4, "population": 3590347},
  "Delaware" : {"population_density": 470.7, "population": 917092},
  "Florida" : {"population_density": 360.2, "population": 19317568},
  "Georgia" : {"population_density": 172.5, "population": 9919945},
  "Hawaii" : {"population_density": 216.8, "population": 1392313},
  "Idaho" : {"population_density": 19.15, "population": 1595728},
  "Illinois" : {"population_density": 231.9, "population": 12875255},
  "Indiana" : {"population_density": 182.5, "population": 6537334},
  "Iowa" : {"population_density": 54.81, "population": 3074186},
  "Kansas" : {"population_density": 35.09, "population": 2885905},
  "Kentucky" : {"population_density": 110.0, "population": 4380415},
  "Louisiana" : {"population_density": 105.0, "population": 4601893},
  "Maine" : {"population_density": 43.04, "population": 1329192},
  "Maryland" : {"population_density": 606.2, "population": 5884563},
  "Massachusetts" : {"population_density": 852.1, "population": 6646144},
  "Michigan" : {"population_density": 174.8, "population": 9883360},
  "Minnesota" : {"population_density": 67.14, "population": 5379139},
  "Mississippi" : {"population_density": 63.50, "population": 2984926},
  "Missouri" : {"population_density": 87.26, "population": 6021988},
  "Montana" : {"population_density": 6.86, "population": 1005141},
  "Nebraska" : {"population_density": 23.97, "population": 1855525},
  "Nevada" : {"population_density": 24.8, "population": 2758931},
  "New Hampshire" : {"population_density": 147.0, "population": 1320718},
  "New Jersey" : {"population_density": 1205, "population": 8864590},
  "New Mexico" : {"population_density": 17.16, "population": 2085538},
  "New York" : {"population_density": 415.3, "population": 19570261},
  "North Carolina" : {"population_density": 200.6, "population": 9752073},
  "North Dakota" : {"population_density": 9.92, "population": 699628},
  "Ohio" : {"population_density": 282.5, "population": 11544225},
  "Oklahoma" : {"population_density": 55.22, "population": 3814820},
  "Oregon" : {"population_density": 40.33, "population": 3899353},
  "Pennsylvania" : {"population_density": 285.3, "population": 12763536},
  "Rhode Island" : {"population_density": 1016, "population": 1050292},
  "South Carolina" : {"population_density": 157.1, "population": 4723723},
  "South Dakota" : {"population_density": 10.86, "population": 833354},
  "Tennessee" : {"population_density": 156.6, "population": 6456243},
  "Texas" : {"population_density": 98.07, "population": 26059203},
  "Utah" : {"population_density": 34.3, "population": 2855287},
  "Vermont" : {"population_density": 67.73, "population": 626011},
  "Virginia" : {"population_density": 207.3, "population": 8185867},
  "Washington" : {"population_density": 102.6, "population": 6724540},
  "Washington,D.C.": {"population_density": 10357, "population": 632323},
  "West Virginia" : {"population_density": 77.06, "population": 1855413},
  "Wisconsin" : {"population_density": 105.2, "population": 5726398},
  "Wyoming" : {"population_density": 5.851, "population": 576412}
};


/* Pseudocode
	1. initialize a new Object called VirusPredictor
	2. add an initialize function for VirusPredictor
		 - takes 3 arguments
		 - adds new property for each argument.
	3. create a function in VirusPredictor that calculates & returns the number of predicted deaths
	4. create a function in VirusPredictor that calculates & returns speed of spread
	5. create a function that prints a sentence to the console and passes in variables (state, number of deaths, speed of spread)
*/

VirusPredictor = new Object();
VirusPredictor.init = function(state_of_origin, population_density, population) {
  this["state"] = state_of_origin;
  this["population"] = population;
  this["population_density"] = population_density;
};
	
VirusPredictor.virus_effects = function() {
	state = this["state"];
	predicted_deaths = this.predicted_deaths();
	speed = this.speed_of_spread();
	console.log(state + " will lose " + predicted_deaths + " people in this outbreak and will spread across the state in " + speed + " months.\n\n");
};

VirusPredictor.predicted_deaths = function() {
	population = this["population"];
	population_density = this["population_density"];
	
	if (population_density >= 200) {
		number_of_deaths = Math.floor(population * 0.4);
	} else if (population_density >= 150) {
		number_of_deaths = Math.floor(population * 0.3);
	} else if (population_density >= 100) {
		number_of_deaths = Math.floor(population * 0.2);
	} else if (population_density >= 50) {
		number_of_deaths = Math.floor(population * 0.1);
	} else {
		number_of_deaths = Math.floor(population * 0.05);
	};
	
	return number_of_deaths;
};

VirusPredictor.speed_of_spread = function() {
	if (this.population_density >= 200) 		 {speed = 0.5}
  else if (this.population_density >= 150) {speed = 1}
	else if (this.population_density >= 100) {speed = 1.5}
	else if (this.population_density >= 50)	 {speed = 2}
	else 																		 {speed = 2.5};
	
	return speed;
};


// REFACTORED
VirusPredictor.predicted_deaths = function() {
	population = this["population"];
	population_density = this["population_density"];

	if (population_density >= 200) 			{return Math.floor(population * 0.4)}
	else if (population_density >= 150) {return Math.floor(population * 0.3)}
	else if (population_density >= 100) {return Math.floor(population * 0.2)}
	else if (population_density >= 50) 	{return Math.floor(population * 0.1)}
	else 																{return Math.floor(population * 0.05)};
};

VirusPredictor.speed_of_spread = function() {
	if (this.population_density >= 200) 		 {return 0.5}
  else if (this.population_density >= 150) {return 1}
	else if (this.population_density >= 100) {return 1.5}
	else if (this.population_density >= 50)	 {return 2}
	else 																		 {return 2.5};
};

// var example = new Object(VirusPredictor);
// example.init("Alabama", STATE_DATA["Alabama"]["population_density"], STATE_DATA["Alabama"]["population"]);
// example.virus_effects();


for (state in STATE_DATA) {
	prediction = new Object(VirusPredictor);
	prediction.init(state, STATE_DATA[state]["population_density"], STATE_DATA[state]["population"]);
	prediction.virus_effects();
};


/*  Reflection

1.	What concepts did you solidify in working on this challenge?
		I learned how to create a "template" for objects and how to create new
		instances of an object.
		
2.	What was the most difficult part of this challenge?
		I think creating new instances of the VirusPredictor was challenging.
		I read online that you could create new instances of objects by writing
		something like:
			var example = new NameOfObject();
		but that wasn't working for me. I began to tinker with the code and found
		that I had to make VirusPredictor a new object, loop through the states,
		and then create new instances by creating a new object and  passing in
		VirusPredictor as an argument.
		
3.	Did you solve the problem in a new way this time?
		Yes! Ruby made things easier by allowing you to use case/when statements.
		Javascript was not as friendly. I had to use if/else statements instead.
		I also changed the way that the predicted_deaths and speed_of_spread functions
		work. Instead of them printing to the console, I had them return a number.
		
4.	Was your pseudocode different from the Ruby version? What was the same and what was different?
	 	The original exercise did not require pseudocode.
*/