# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings for labels
# Output: Integer for number of sides, and a string for the current side
# Steps:
# Initialize Die
#   Check for an empty array of labels
#     IF empty, raise an error
#   Store the labels in a variable to retrieve later
# 
# Sides
#   Return the number of available sides
# 
# Roll
#   Generate a random integer to represent the side of the die
#   Retrieve the side label based on the random integer
#   Return the label


# Initial Solution

# class Die
#   def initialize(labels)
#     if labels.empty?
#       raise ArgumentError.new("An array of labels must be provided.")
#     end

#     @side_labels = labels
#     @side_count = @side_labels.length

#   end

#   def sides
#     return @side_count
#   end

#   def roll
#     @current_side = rand(@side_count)
#     return @side_labels[@current_side]
#   end
# end

# # Driver Code
# my_die = Die.new(['A','B','C','D','E','F'])
# puts 'Side Count: ' + my_die.sides.to_s
# puts 'Rall: ' + my_die.roll.to_s
# puts 'Rall: ' + my_die.roll.to_s
# puts 'Rall: ' + my_die.roll.to_s
# puts 'Rall: ' + my_die.roll.to_s
# puts 'Rall: ' + my_die.roll.to_s
# puts 'Rall: ' + my_die.roll.to_s

# Refactored Solution
class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("An array of labels must be provided.")
    end

    @side_labels = labels
    @side_count = @side_labels.length

  end

  def sides
    return @side_count
  end

  def roll
    @current_side = @side_labels[rand(@side_count)]
  end
end

# Driver Code
my_die = Die.new(['A','B','C','D','E','F'])
puts 'Side Count: ' + my_die.sides.to_s
puts 'Rall: ' + my_die.roll.to_s
puts 'Rall: ' + my_die.roll.to_s
puts 'Rall: ' + my_die.roll.to_s
puts 'Rall: ' + my_die.roll.to_s
puts 'Rall: ' + my_die.roll.to_s
puts 'Rall: ' + my_die.roll.to_s



# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# => The only real difference is that instead of storing a simple integer for the number of sides, I stored an array of strings.  Then to retrieve the 
# => side, I just have to retrieve the array using a number for the array index.  Not much had to change in terms of logic.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# => It's definitely easy to use existing code as a starting point if it's modifable.  

# What new methods did you learn when working on this challenge, if any?
# => This was my first experience using .empty? to check the emty argument

# What concepts about classes were you able to solidify in this challenge?
# => I had to double check my syntax for instance variables, I think that has really sunk in now I hope.
