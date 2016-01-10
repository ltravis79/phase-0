/*
Gradebook from Names and Scores
I worked on this challenge with Karen Ball
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
var gradebook = {};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]]= {};
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);  
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
}

function average(intArray){
  var sum = 0;
  for (var i=0; i < intArray.length; i++){
    sum += intArray[i];
  }
  return sum /intArray.length;
}

// console.log(average([3,4,5]))
// console.log(gradebook.getAverage("Joseph"));

// gradebook.addScore("Susan", 80);
// console.log(gradebook);

// __________________________________________
// Refactored Solution








// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
//    Adding functions wasn't totally new, but the challenge did help to solidify my syntax for functions.  Also, we did 
//    try to print return values as a test as we went, but forgot to actually return a value from the function, which kept 
//    printing an undefined value.  So it was a good reminer to return a value if you need to use it.
//    
// How did you iterate over nested arrays in JavaScript?
//    We used for loops to iterate over the arrays using an index number.  To add the nested values of the scores, 
//    we put the statement to add scores inside the same loop as the student names because the index values lined up with eachother.
//    This way we were able to streamline the process rather than using two separate loops.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//    Not really any new methods here.  We had hoped to find a built in method to calculate an average for arrays, but we never found one.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)