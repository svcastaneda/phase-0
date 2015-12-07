// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: create a paper, scissors, rock game
// Goals: get user input, get random computer choice, and determine winner
// Characters: user & computer
// Objects: user choice & computer choice
// Functions: get usr input, get computer choice, determine winner

// Pseudocode
// 1. create variables that store an array for user choices
// 2. create a while loop that asks the user to choose from paper, scissors, and rock. Keeps asking until the user input is valid.
// 3. create a variable that picks a random item from the array of possible choices as the computer's choice.
// 4. write out to the HTML page 3 things: what the user picked, what the computer picked, and who won.
//

// Initial Code
window.onload = function() {
	var choices = ['paper', 'scissors', 'rock'];
	var choice = '';
	while (choice != 'paper' && choice != 'scissors' && choice != 'rock') {
		choice = prompt("paper, scissors, or rock?").toLowerCase();
		document.getElementById("userChoice").innerHTML = "You chose: " + choice;
	};
	var computerChoice = Math.random();

	if (computerChoice<=0.33) {
	  computerChoice = 'rock';
		console.log(computerChoice);
	} else if (computerChoice<=0.67) {
	  computerChoice = 'paper';
		console.log(computerChoice);
	} else {
	  computerChoice = 'scissors';
		console.log(computerChoice);
	};
	
	document.getElementById("computerChoice").innerHTML = "The computer chose: " + computerChoice;

	if (choice == 'paper') {
		if (computerChoice == 'paper') {
			document.getElementById("winner").innerHTML = "It's a tie!";
		} else if (computerChoice == 'scissors') {
			document.getElementById("winner").innerHTML = "The computer won :(";
		} else if (computerChoice == 'rock') {
			document.getElementById("winner").innerHTML = "You won!!";
		};
	} else if (choice == 'scissors') {
		if (computerChoice == 'paper') {
			document.getElementById("winner").innerHTML = "You won!!";
		} else if (computerChoice == 'scissors') {
			document.getElementById("winner").innerHTML = "It's a tie!";
		} else if (computerChoice == 'rock') {
			document.getElementById("winner").innerHTML = "The computer won :("
		};
	} else if (choice == 'rock') {
		if (computerChoice == 'paper') {
			document.getElementById("winner").innerHTML = "You won!!";
		} else if (computerChoice == 'scissors') {
			document.getElementById("winner").innerHTML = "The computer won :(";
		} else if (computerChoice == 'rock') {
			document.getElementById("winner").innerHTML = "It's a tie!";
		};
	};
};

// Refactored Code
window.onload = function() {
	var choices = ['paper', 'scissors', 'rock'];
	var win = "You won!!";
	var loss = "The computer won :(";
	var tie = "It's a tie!";
	
	
	var choice = '';
	while (choice != 'paper' && choice != 'scissors' && choice != 'rock') {
		choice = prompt("paper, scissors, or rock?").toLowerCase();
		document.getElementById("userChoice").innerHTML = "You chose: " + choice;
	};
	
	var computerChoice = Math.random();
	if (computerChoice<=0.33) {
	  computerChoice = 'rock';
	} else if (computerChoice<=0.67) {
	  computerChoice = 'paper';
	} else {
	  computerChoice = 'scissors';
	};
	
	document.getElementById("computerChoice").innerHTML = "The computer chose: " + computerChoice;

	if (choice == 'paper') {
		if (computerChoice == 'paper') { document.getElementById("winner").innerHTML = tie }
		else if (computerChoice == 'scissors') { document.getElementById("winner").innerHTML = loss }
		else if (computerChoice == 'rock') { document.getElementById("winner").innerHTML = win };
	}
	else if (choice == 'scissors') {
		if (computerChoice == 'paper') { document.getElementById("winner").innerHTML = win }
		else if (computerChoice == 'scissors') { document.getElementById("winner").innerHTML = tie }
		else if (computerChoice == 'rock') { document.getElementById("winner").innerHTML = loss };
	}
	else if (choice == 'rock') {
		if (computerChoice == 'paper') { document.getElementById("winner").innerHTML = win }
		else if (computerChoice == 'scissors') { document.getElementById("winner").innerHTML = loss }
		else if (computerChoice == 'rock') { document.getElementById("winner").innerHTML = tie };
	};
};



// Reflection
// I had difficulty picking a game that was doable in a short amount of time. I brainstormed
// many simple games that I played growing up as a kid (hangman, MASH, tic tac toe, and
// choose your own adventure). I decided to do paper, scissors, rock because it seemed
// simple enough (which it was) while still learning in the process. For example, I learned
// how to get user input and how to write out to the HTML using JavsScript.
//
// To be honest, I didn't do the CodeCademy tutorial on JavaScript and didn't realize
// that one of the lessons was a tutorial on how to make this game. SOmeone else in the 
// cohort told me, but told me Sunday night (which is when we paired), so it was too late
// for me to make a different game. If I had more time and/or knew that CodeCademy had a
// paper, scissors, rock tutorial, I would have made a Hangman game.