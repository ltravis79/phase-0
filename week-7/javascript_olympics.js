// JavaScript Olympics

// I paired with: Raj Vashist on this challenge.

// This challenge took me [1.5] hours.


// Warm Up




// Bulk Up
function win(athletes) {
	for (i = 0; i < athletes.length; i++)
	{
		athletes[i].win = true;
		console.log(athletes[i].name + " won the " + athletes[i].event)
	}
}

person1 = {
	name: 'John',
	event: 'Basketball'
}

person2 = {
	name: 'Jim',
	event: 'Skiier'
}

person3 = {
	name: 'Dan',
	event: 'Luge'
}
var athletes = [person1, person2, person3]

win(athletes)


// Jumble your words
function reverse(text) {
	var chars = text.split('');
	chars.reverse();
	console.log(chars.join(''));
}

str = "cat";
reverse(str)


// 2,4,6,8
function evens(nums) {
	var evennums = [];
	for (i = 0; i < nums.length; i++)
	{
		if (nums[i] % 2 === 0)
 		evennums.push(nums[i]);
 	}
	console.log(evennums);
	return evennums;
}

evens([1,2,5,7,8])



// "We built this city"
var Athlete = function(name,age,sport,quote) {
	this.name = name;
	this.age = age;
	this.sport = sport;
 	this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//    I think the constructor was really solidifed for me.  It took some thinking and researching to remember what needed to be done,
//    but once we got there it really sunk in for me I think.

// What are constructor functions?
//    Constructor functions are functions that are used to build an object, almost like using a template.  The constructor assigns 
//    certain properties to the object based on information provided when they are called.

// How are constructors different from Ruby classes (in your research)?
//    Honestly, I'm not too sure about this one.  I feel like they must be different, but the way I'm understnding both things, they 
//    seem to effectively accomplish the same thing.  They both define the properties and methods of an object.
