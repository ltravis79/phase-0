
function sum(array) {
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i];
  };
  return sum;
};

var list = [3, 8, 9, 1, 5, 7, 9, 21];
console.log(sum(list));

// User Story 1
// As a user I want to provide a list of numbers to the function.  Then I want the function to add up all of the 
// individual numbers and give me back an answer.


function mean(array) {
  var sum = 0;
  for(var i=0; i < array.length; i++)  {
    sum += array[i];
    }
  return (sum / array.length);
}

var list = [3, 8, 9, 1, 5, 7, 9, 21];
console.log(mean(list));

// User Story 2
// As a user I want to provide a list of numbers to the function, which will then add up all of the numbers 
// and divide the total by the number of items I provided, and give me the answer.


function median(array) {

    array.sort( function(a,b) {return a - b;} );
// we needed to sort the array in ascending order so i veered from the original pseudocode
    var half = Math.floor(array.length/2);
// this finds the position of the median number by using the .floor function which rounds down to the closest integer
    if(array.length % 2)
        return array[half];
    else
        return (array[half-1] + array[half]) / 2.0;
}

var list = [3, 8, 9, 1, 5, 7, 9, 21];
console.log(median(list));

// User Story 3
// As a user I want to provide a list of numbers to a function.  Then I want the function to sort them, divide the number of items by 2, 
// and then return the number from the middle item.  If there is an even number of items, I want the answer to be the average of the two 
// middle numbers.
