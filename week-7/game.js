// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Outscore the other player in a hockey shootout
// Goals: Score goals! Best of 5 initially wins, adding individual rounds if tied after 5 rounds
// Characters: Player1, Player2, Goalie
// Objects: Scoreboard
// Functions: Shoot, Save

// Pseudocode
// Set up our objects - two players and a goalie, and a scoreboard
//
// Scoreboard Object
//    Include property for a shot counter
//    Include property for game in progress
//    Function to check end of game
//       IF shot counter divided by 2 is greater than or equal to 5
//          Use remainder to check to see if each player has had a turn that round
//          IF shot count is even AND player 1 score does not equal okayer 2 score
//             Return the player with the highest score as the winner
//          END IF
//       ELSE Game continues
//       END IF
//
// Player Object
//    Initialize with a score counter of 0
//    Has a function to shoot the puck
//       Take a value from 1 to 100 representing an area of the goal
//       Call the goalie's save function with the location of the shot
//       Compare the shot value to the goalie's scoring area
//       IF value is in the range
//          Increment the player's score counter
//       END IF
//       Add one to the shot counter
//       Check score for the end of the game
//       
//
// Goalie Object
//    Include properties for start and stop of the scoring area
//    Has a save function
//       Randomly generate a number from 1 to 100, representing the a spot of the goal
//       Expand the number to 1/3 of the goal (our goalie can cover 2/3 of the net to make his saves)
//       IF number is between 1 and 33
//          Set scoreing area start to 1
//          Set scoring area stop to 33
//       END IF
//       IF number is between 34 and 66
//          Set scoreing area start to 34
//          Set scoring area stop to 66
//       END IF
//       IF number is between 67 and 99
//          Set scoreing area start to 67
//          Set scoring area stop to 100
//       END IF
//
//
//
//

// Initial Code
// var scoreboard = {
//   shotCount: 0,
//   inProgress: true,

//   checkGame: function() {
//     if (scoreboard.shotCount / 2 >= 5 && scoreboard.shotCount % 2 === 0)
//     {
//       if (player1.score === player2.score)
//       {
//         // Game still tied, continue!
//       }
//       else
//       {
//         scoreboard.inProgress = false;
//         console.log("Game Over!");
//         if (player1.score > player2.score)
//           console.log("Player 1 Wins!");
//         else
//           console.log("Player 2 Wins!");

//         console.log("Final Score: " + player1.score + " - " + player2.score);
//       }
//     }
//   }
// }

// var shoot = function(target) {
//   scoreboard.shotCount++;
//   goalie.save(target);
//   console.log(this.name + " Shoots...");
//   if (target >= goalie.scoreMin && target <= goalie.scoreMax)
//   {
//     this.score++;
//     console.log("SCORE!");
//   }
//   else
//     console.log("SAVED!");

//   scoreboard.checkGame()
// }

// var player1 = {
//   name: 'Player 1',
//   score: 0,
//   shoot: shoot
// }

// var player2 = {
//   name: 'Player 2',
//   score: 0,
//   shoot: shoot
// }

// var goalie = {
//   scoreMin: 0,
//   scoreMax: 0,

//   save: function(target) {
//     var saveTarget = Math.floor((Math.random() * 100) + 1);
//     if (saveTarget >= 1 && saveTarget <= 33)
//     {
//       goalie.scoreMin = 1;
//       goalie.scoreMax = 33;
//     }
//     else if (saveTarget >= 34 && saveTarget <= 66)
//     {
//       goalie.scoreMin = 34;
//       goalie.scoreMax = 66;
//     }
//     else if (saveTarget >= 67) 
//     {
//       goalie.scoreMin = 67;
//       goalie.scoreMax = 100;
//     }
//   }
// }

// while(scoreboard.inProgress)
// {
//   if (scoreboard.shotCount % 2 === 0) 
//     player1.shoot(Math.floor((Math.random() * 100) + 1));
//   else
//     player2.shoot(Math.floor((Math.random() * 100) + 1));
// }


// Refactored Code
var scoreboard = {
  shotCount: 0,
  inProgress: true,

  checkGame: function() {
    if (scoreboard.shotCount / 2 >= 5 && scoreboard.shotCount % 2 === 0 && player1.score !== player2.score)
    {
      scoreboard.inProgress = false;
      console.log("Game Over!");
      if (player1.score > player2.score)
        console.log("Player 1 Wins!");
      else
        console.log("Player 2 Wins!");

      console.log("Final Score: " + player1.score + " - " + player2.score);
    }
  }
}

var shoot = function(target) {
  scoreboard.shotCount++;

  goalie.save(target);

  console.log(this.name + " Shoots...");
  if (target >= goalie.scoreMin && target <= goalie.scoreMax)
  {
    this.score++;
    console.log("SCORE!");
  }
  else
    console.log("SAVED!");

  scoreboard.checkGame()
}

var player1 = {
  name: 'Player 1',
  score: 0,
  shoot: shoot
}

var player2 = {
  name: 'Player 2',
  score: 0,
  shoot: shoot
}

var goalie = {
  scoreMin: 0,
  scoreMax: 0,

  save: function(target) {
    var saveTarget = Math.floor((Math.random() * 100) + 1);
    if (saveTarget >= 1 && saveTarget <= 33)
    {
      goalie.scoreMin = 1;
      goalie.scoreMax = 33;
    }
    else if (saveTarget >= 34 && saveTarget <= 66)
    {
      goalie.scoreMin = 34;
      goalie.scoreMax = 66;
    }
    else if (saveTarget >= 67) 
    {
      goalie.scoreMin = 67;
      goalie.scoreMax = 100;
    }
  }
}

while(scoreboard.inProgress)
{
  if (scoreboard.shotCount % 2 === 0) 
    player1.shoot(Math.floor((Math.random() * 100) + 1));
  else
    player2.shoot(Math.floor((Math.random() * 100) + 1));
}





// Reflection
// What was the most difficult part of this challenge?
//    I think the most difficult part for me was deciding how to lay out the structure of the program so 
//    that the objects could interact with eachother, and knowing when to call certainn methods.

// What did you learn about creating objects and functions that interact with one another?
//    You need to plan well!  During my first pass of coding I forgot to increment my shot counter, so the game went on forever.
//    I thought that I had taken care of that in the scoreboard's method, but hadn't.  It would work either there or in the shoot 
//    method I think, but it needed to be in one or the other and it was in neither.  I think that working with multiple objects tripped 
//    me up on that front.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//    Not really.  I had hoped to clean up the if/else if in my save function by using a switch statement, but with my range of values 
//    it didn't seem like that would work the way I hoped.  I did clean up the if statement in the check game function though, making it 
//    one if to find out if the game should be over rather than nested ones.

// How can you access and manipulate properties of objects?
//    You can access properties by referencing them as "object.property" or also using brackets like object["property"].  In my game I used the 
//    first approach, such as player1.score to return the score, or player1.score++ to increase it.
