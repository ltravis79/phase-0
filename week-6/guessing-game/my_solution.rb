# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integers for the answer and guess
# Output: True or false if answer has been solved.  Output symbols for high, low, and correct guesses
# Steps:
# Initialize Game
#   Assign the provided answer to a variable to recall later
#   Declare a variable to hold the previous guess
# Guess
#   Compare guess provided to the answer
#     IF guess is less than answer
#        return the symbol for low
#     ELSE IF guess is greater than the answer
#        return the symbol for high
#     ELSE IF guess equals the answer
#        retuen the symbol for correct
#     END IF
# Solved
#   Compare the previous guess to the answer 
#     IF equal, return true
#     ELSE return false



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @last_guess = nil
#   end

#   def guess(guess)
#   	@last_guess = guess
#   	if guess < @answer
#   		return :low
#   	elsif guess > @answer
#   		return :high
#   	else
#   		return :correct
#   	end
#   end

#   def solved?
#   	if @last_guess == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end
# end

# Driver Code
# my_game = GuessingGame.new(7)
# p my_game.guess(3)
# p my_game.solved?
# p my_game.guess(8)
# p my_game.solved?
# p my_game.guess(7)
# p my_game.solved?


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess = nil
  end

  def guess(guess)
  	@last_guess = guess
  	return :correct if guess == @answer
  	(guess < @answer)? :low : :high
  end

  def solved?
  	@last_guess == @answer
  end
end

# Driver Code
my_game = GuessingGame.new(7)
p my_game.guess(3)
p my_game.solved?
p my_game.guess(8)
p my_game.solved?
p my_game.guess(7)
p my_game.solved?



# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => Instance variables and methods help to represent a real-world object because they stick with the object.
# => You can have multiple instances of an object and they will all retain their own specific data by using instance variables and methods.

# When should you use instance variables? What do they do for you?
# => You should use instance variables any time you want data to be available between all of the different methods in a class.
# => They allow you to store information that pertains to that particular instance of a class, and can be used in all it's methods as needed.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => To use flow control, you evaluate a condition, and depending on whether or not the condition is true or not, the code
# => will do different things.  In this case, I used if and elsif to determine what values to return.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => The benefits of using symbols are that they are unique and exist as only one object in your program.  This means they also only take 
# => up space in memory one time, making them more efficient.  I think that the solution calls for symbols because this way when 
# => the program runs, if it were to guess hundreds of times, it wouldn't have to create results hundreds of times and taking up memory.
