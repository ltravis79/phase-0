# I worked on this challenge by myself.
# This challenge took me [0.75] hours.

# Pseudocode
# Create an empty array to hold fibonacci numbers
# Seed the initial values of the sequence with 0 and 1
# Load array with valid fibonacci numbers
# Set a counter variable to 2
# Set a variable to the sum of the previous two numbers in the array
# WHILE the variable is less than the value we are testing
#    add the value to the array
# END WHILE
# Check to see if the requested value is in the populated array



# Initial Solution

# def is_fibonacci?(num)
# 	fibonaccis = []
# 	fibonaccis = [0, 1]

# 	index = 2
# 	next_num = 0

# 	until next_num >= num
# 		next_num = fibonaccis[index - 2] + fibonaccis[index - 1]

# 		fibonaccis[index] = next_num
# 		index = index + 1
# 	end

# 	# puts fibonaccis
# 	fibonaccis.each do |number|
# 		return true if number == num
# 	end

# 	false
# end

# p is_fibonacci?(50)
# p is_fibonacci?(55)
# p is_fibonacci?(144)
# p is_fibonacci?(145)

# Refactored Solution


def is_fibonacci?(num)
	fibonaccis = []
	fibonaccis = [0, 1]

	index = 2
	next_num = 0

	until next_num >= num
		next_num = fibonaccis[0] + fibonaccis[1]
		fibonaccis[0] = fibonaccis[1]
		fibonaccis[1] = next_num
	end

	fibonaccis.include?(num)
end

p is_fibonacci?(50)
p is_fibonacci?(55)
p is_fibonacci?(144)
p is_fibonacci?(145)




# Reflection
# What concepts did you review in this challenge?
# => I reviewed the different syntax for looping, and how to enumerate through an array

# What is still confusing to you about Ruby?
# => I still have issues with some of the differences betwen the different enumerable methods.

# What are you going to study to get more prepared for Phase 1?
# => I'm going to keep reviewing the differences in the enumerables so that I can get them straight.
