// Challenge 9.3 - JavaScript Review

// PSEUDOCODE

// Create an object to serve as a template for each grocery item
//    -Item Name
//    -Quantity
//    -Ability to update quantity

// Create a grocery list variable as an empty array to hold items
// Create items using the item template, add them to the list

// Print the grocery list
// LOOP through the items
//    Display the item name and quantity
// END LOOP

// INITIAL SOLUTION

// var groceries = [];

// var milk = {
// 	name: 'Milk',
// 	qty: 1
// }

// var eggs = {
// 	name: 'Eggs',
// 	qty: 2
// }

// var chips = {
// 	name: 'Tortilla Chips',
// 	qty: 3
// }

// var salsa = {
// 	name: 'Hot Salsa',
// 	qty: 3
// }

// groceries = [milk, eggs, chips, salsa];

// function updateQty(item, newQty) {
// 	for (var i = 0; i < groceries.length; i++) {
// 		if (groceries[i].name === item)
// 			groceries[i].qty = newQty;
// 	}
// }

// function printGroceries() {
// 	for (var i = 0; i <groceries.length; i++) {
// 		console.log(groceries[i].name + ": " + groceries[i].qty);
// 	}
// }
// // Driver Code
// printGroceries();

// updateQty('Milk', 2);

// console.log();
// console.log("Updated List...");
// printGroceries();


// REFACTORED SOLUTION

function GroceryItem(name, qty) {
	this.name = name;
	this.qty = qty;
	this.updateQty = function(newQty) {
		this.qty = newQty;
	}
}

function printList(list) {
	for (var i = 0; i < list.length; i++) {
		console.log(list[i].name + ": " + list[i].qty);
	}
}

var groceries = [];

var eggs = new GroceryItem('Eggs', 2);
var milk = new GroceryItem('Milk', 1);
var chips = new GroceryItem('Tortilla Chips', 3);
var salsa = new GroceryItem('Hot Salsa', 3);

milk.updateQty(2);
console.log("Milk: " + milk.qty);

groceries = [eggs, milk, chips, salsa];

printList(groceries);


// REFLECTION
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
//    I was a little fuzzy on the syntax for setting up a constructor, going through it here really helped.

// What was the most difficult part of this challenge?
//    Again, the constructor syntax, but also how to lay out the steps of the different pieces of code.  I started to define printList on the 
//    array, but since I used an array instead of an object that wouldn't work, and I had to put the function on it's own.

// Did an array or object make more sense to use and why?
//    I think that an array of objects made sense.  I used an array for the list itself, since it's just a straightforward list.
//    The individual items however, leant themselves to a little more data, and so I went with objects for them,
//    I think that I might reconsider the initial array and create an object for the list as well though because that way I can add 
//    the print and remove methods to the object itself.
