# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Integer for number of sides of die
# Output: Integer for number of sides and result of roll
# Steps:
# Initialize new die object
#    Raise an error if number of sides is less than one
#    Assign the number of sides to an instance variable for the object
#    Return the number of sides
# Sides method
#    Returns the number of sides for the current object
# Roll method
#    Generate a random number between 1 and the number of sides
#    Return the resulting number


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     if sides < 1
#     	raise ArgumentError.new("Error- Die must be initialized with at least 1 side")
#     end
#     @sides = sides
#     return @sides
#   end

#   def sides
#     # code goes here
#     return @sides
#   end

#   def roll
#     # code goes here
#     return rand(@sides) + 1
#   end
# end

# # Driver Code
# my_die = Die.new(7)
# puts 'Sides: ' + my_die.sides.to_s
# puts 'Roll: ' + my_die.roll.to_s

# 3. Refactored Solution
class Die
  def initialize(sides)
    # code goes here
    if sides < 1
    	raise ArgumentError.new("Error- Die must be initialized with at least 1 side")
    end
    @sides = sides
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(@sides) + 1
  end
end

# Driver Code
my_die = Die.new(7)
puts 'Sides: ' + my_die.sides.to_s
puts 'Roll: ' + my_die.roll.to_s






# 4. Reflection
# What is an ArgumentError and why would you use one?
# => An ArgumentError is used when the number or type of arguments being passed to a method don't match 
# => What the program is expecting

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I used the rand method to get a random number for the rolling of the die.  One minor issue is that the 
# => method returns a number between 0 and the number you ask for, but not including that number.  Since 
# => we don't want a 0 and we do want the possible max number you have to adjust the random result by 
# => adding one to the result.

# What is a Ruby class?
# => A class is like a prent type of object.  Items that belong to a class can share certain characteristics, the
# => class sort of acts like a template.  For example, house can be a class, and individual objects (specific houses)
# => get certain characteristics from the general class, like walls and windows, those types of things are applicable to any house.

# Why would you use a Ruby class?
# => You would use a class in order to gain prebuilt methods and attributes from the parent class, without having to define them 
# => over and over again.  Objects coming from a class can also store data specific to themselves, so you can implememnt them more 
# => than once and keep the data separate.  For example, we could implement two separate dies in this challenge and roll two dice.

# What is the difference between a local variable and an instance variable?
# => A local variable can only be accessed within the method where it resides.  An instance variable can be accessed by multiple methods, 
# => but only within the intance of the class.  Other classes can't access them.

# Where can an instance variable be used?
# => An instance variable can be used in any method in the class, specific to the instance of the class.  So if we had two dice, the data 
# => stored in instance variables within die number 1 can't be used by die number 2.
