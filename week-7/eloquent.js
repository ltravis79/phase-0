// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var counter = 0;
counter = counter + 1;

// Food prompt question...
// var vavFood = prompt("What's your favorite food?");
// alert("Hey! That's my favorite, too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var i = 1; i < 101; i++)
{
	if (i % 3 === 0 && i % 5 === 0)
		console.log("FizzBuzz");
	else if (i % 3 === 0)
		console.log("Fizz");
	else if (i % 5 === 0)
		console.log("Buzz");
	else
		console.log(i);
}


// Functions

// Complete the `minimum` exercise.
function min(value1, value2) {
	if (value1 <= value2)
		return value1;
	else
		return value2;

}

console.log(min(1,7));
console.log(min(-1,3));
console.log(min(50, 10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Lindsey", 
	age: 36, 
	favFoods: ["Grilled Salmon", "Cheeseburgers", "BBQ Pork Sandwiches"],
	quirk: "Collects Lego Architecture sets"
}
