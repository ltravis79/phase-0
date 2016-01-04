// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// variable separateComma is a function that takes input {
//   if input is not a number {
//   tell user input is not a number;
//   } else {
// declare empty output array variable
// convert input to string
// split input string to individual characters
// reverse input string array

// for loop <conditional> {
//   push input array object into output array;
//   if object index is divisible by 3 with no remainder {
//   push a comma
//   }
// }

// if last object in output array is a comma {
//   remove comma
// }

// reverse output;
// join output;
// log output to console;
// }
// };



// Initial Solution
// var separateComma = function(inputNumber) {
// 	var outputArr = [];

// 	var inputString = inputNumber.toString();
// 	var inputArray = inputString.split('');
// 	inputArray.reverse();

// 	for (var i = 0; i < inputArray.length; i++)
// 	{
// 		if (i % 3 === 0)
// 		{
// 			outputArr.push(',');
// 		}

// 		outputArr.push(inputArray[i]);
// 	}

// 	if (outputArr[0] === ',')
// 	{
// 		outputArr.shift();
// 	}

// 	outputArr.reverse();

// 	var outputStr = outputArr.join('');

// 	console.log(outputStr);
// };

// separateComma(123);
// separateComma(12345);
// separateComma(123456);
// separateComma(1234567);

// Refactored Solution
var separateComma = function(inputNumber) {
	var outputArr = [];

	var inputArray = inputNumber.toString().split('').reverse();

	for (var i = 0; i < inputArray.length; i++)
	{
		if (i % 3 === 0)
		{
			outputArr.push(',');
		}

		outputArr.push(inputArray[i]);
	}

	if (outputArr[0] === ',')
	{
		outputArr.shift();
	}

	console.log(outputArr.reverse().join(''));
};

separateComma(123);
separateComma(12345);
separateComma(123456);
separateComma(1234567);



// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//    I think the approach to the problem was the same in JavaScript for us.  We still took the same steps - reverse the number, 
//    split it into individual characters, iterate through the characters, inserting a comma when needed, then reversing the 
//    digits and joining them.

// What did you learn about iterating over arrays in JavaScript?
//    Iterating over arrays is a little different in JavaScript, since the iteration works on the index numbers, while in Ruby 
//    we had other options to iterate through the values themselves.

// What was different about solving this problem in JavaScript?
//    Using the different iterators was different.  Also our approach in JAvaScript called for the possibility of an extra comma 
//    at the beginning of a number with even multiples of three digits, so we had to adjust for that after looping.  Also, the 
//    join and split functions have a different default behavior, we had to specify to split or join with no characters in between ('').

// What built-in methods did you find to incorporate in your refactored solution?
//    We didn't find any built in methods that we hadn't already used in our initial solution, but we did do a better job of cleaning 
//    up the code to be a little more readable, combining some options on one line when possible.
