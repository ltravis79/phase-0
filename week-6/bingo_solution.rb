# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # Create an array with letters BINGO
  # Generate a random integer from 0 to 4
  # Retrieve the corresponding BINGO letter from the index number
  # Generate a random number from 0 to 99
  #   Offset the number by 1 to shift range to 1 to 100
  # Combine the letter and number in a string to return

# Check the called column for the number called.
  #fill in the outline here
  # Split the called number into values for the letter and the number
  # Find the column nuumber based on the letter value
  # LOOP through each sub array of the board
  #    IF tbe column index of the sub array has the number specified, store the row index
  #    Call method to replace value with an x
  # END LOOP

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # Using array indexes, update the value to an x

# Display a column to the console
  #fill in the outline here
  # INPUT: Column Letter
  # Retrieve column index based on the letter
  # Iterate through the board arrays
  #    For each array, print the value of the specified column to the screen
  #    Print a new line after each outputted value to create a vertical column

# Display the board to the console (prettily)
  #fill in the outline here
  # LOOP through the BINGO letters array
  #    Print letter value followed by spaces for readability
  # END LOOP
  # LOOP through the board array
  #    FOR EACH sub array, LOOP through values
  #       Print the value to the console, followed by spaces for readability
  #    END LOOP
  #    Move to a new line following each sub array
  # END LOOP

# Initial Solution

# class BingoBoard
#   def initialize(board)
#     @bingo_board = board
#     @columns = ['B', 'I', 'N', 'G', 'O']
#   end

#   def call
#     letter_num = rand(5)
#     letter = @columns[letter_num]

#     number = rand(100) + 1

#     @bingo_number = letter + number.to_s
#   end

#   def check
#     column_index = ''
#     letter = @bingo_number.slice(0)
#     number = @bingo_number.slice(1,3)

#     @columns.each_index { |col| column_index = col if @columns[col] == letter }

#     @bingo_board.each_index { |row| 
#       @bingo_board[row][column_index] = 'x' if @bingo_board[row][column_index] == number.to_i
#     }
#   end

#   def print_column(column)
#     column_index = 0
#     @columns.each_index { |col| column_index = col if @columns[col] == column }

#     puts "#{column}"

#     @bingo_board.each { |row| puts row[column_index] }
#   end

#   def print_board
#     @columns.each { |letter| print "#{letter}   " }
#     puts

#     @bingo_board.each { |row| 
#       row.each { |number| 
#         print "#{number}  "
#       }
#       puts
#     }
#   end

# end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
    @columns = ['B', 'I', 'N', 'G', 'O']
  end

  def call
    letter = @columns.sample
    letter_index = @columns.index(letter)

    letter_offset = 15 * letter_index # This will be used to shift the random number into the appropriate column

    number = rand(15) + 1 # generate a random number from 1 to 15

    number += letter_offset

    @bingo_number = letter + number.to_s
  end

  def check
    column_index = ''
    letter = @bingo_number.slice(0)
    number = @bingo_number.slice(1,3)

    column_index = @columns.index(letter)

    @bingo_board.each_index { |row| 
      @bingo_board[row][column_index] = 'x' if @bingo_board[row][column_index] == number.to_i
    }
  end

  def print_column(column)
    column_index = @columns.index(column)

    puts "#{column}"

    @bingo_board.each { |row| puts row[column_index] }
  end

  def print_board
    @columns.each { |letter| print "#{letter}   " }
    puts

    @bingo_board.each { |row| 
      row.each { |number| 
        print "#{number}  "
      }
      puts
    }
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
#Original Board...
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

#New Board (1-15, 16-30, etc)
board = [[7, 28, 31, 49, 72],
        [3, 17, 40, 59, 62],
        [13, 24, 33, 54, 74],
        [12, 30, 45, 47, 68],
        [10, 19, 38, 51, 70]]

new_game = BingoBoard.new(board)
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts
puts 'Number: ' + new_game.call
new_game.check
puts "Your Board:"
new_game.print_board
puts

new_game.print_column("I")

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => I thought that pseudocoding this challenge was pretty easy to do.  I think my style has gotten better and is 
# => laid out in a way that helps me translate to code pretty easily.

# What are the benefits of using a class for this challenge?
# => A class allows you to use instance variables, which allow us to store data between method calls.  That makes it easy to 
# => store the current bingo board in between multiple numbers being "called out"

# How can you access coordinates in a nested array?
# => To get a value using coordinates in a nested array, simply add the second coordinate to the array call - array[1][2] would 
# => return the third item from the second array (since indexes start at 0)

# What methods did you use to access and modify the array?
# => I used each and each_index to iterate through the arrays.  The each_index array was useful for iterating through the outer
# => array because then inside the iteration I was able to use the [][] syntax because I had the first index provided, rather than the value.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# => I found the .index method in order to return the index number given a specific value.  ["A","B","C"].index("B") would return 1.

# How did you determine what should be an instance variable versus a local variable?
# => Anything that potentially needs to be accessed at any given time by any method went into an instance variable.  For me this was items 
# => of the board, an array of column letters, and the last number called.  Any other variables were just used temporarily for iterating, 
# => and so I left those as local variables.

# What do you feel is most improved in your refactored solution?
# => I particularly like the use of sample for getting a random letter, and index in order to get the index number for the letter, rather than 
# => iterating through each column to find the right index number.  This was faster.
# => I also liked my solution for changing the game into a valid bingo board (1 to 15, 15 to 30, etc).  I still used a random letter, and a random 
# => number, but I limited the number to 1 -15, then shifted it accordingly to fit the letter that was called.  For example, if the number was 
# => 1, but the letter was I, the number would shift up 15, and become 16 (the first I value).

