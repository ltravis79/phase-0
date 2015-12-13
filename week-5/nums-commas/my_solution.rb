# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A string representing the integer
# What are the steps needed to solve the problem?
#   Assign a string variable to the string value of the initial integer
#   IF the length of the string is less than or equal to 3, return the string (no need to add commas)
#   Iterate backwards through the characters in the string
#     Check to see if we have already concatenated 3 digits
#     IF digit count is already at 3
#       Concatenate a comma before concatenating the next digit
#       Reset digit counter to 0
#     END IF
#     Concatenate the digit to a new string
#     Increment the digit counter
#   End iteration
#   Reverse the new string (because it was concatenated backwards) and return the result


# 1. Initial Solution
# def separate_comma(my_number)
# 	str_number = my_number.to_s
# 	if str_number.length <= 3 then
# 		p str_number
# 		return str_number
# 	end

# 	new_number = ''

# 	digit_counter = 0

# 	str_number.reverse.each_char { |letter|  
# 		if digit_counter == 3 then
# 			new_number += ','
# 			digit_counter = 0
# 		end

# 		new_number += letter
# 		digit_counter += 1
# 	}
# 	# p new_number.reverse
# 	return new_number.reverse
# end



# 2. Refactored Solution
def separate_comma(my_number)
	str_number = my_number.to_s
	if str_number.length <= 3 then
		p str_number
		return str_number
	end

	new_number = ''

	digit_counter = -1

	while digit_counter >= str_number.length * -1
		new_number.prepend(str_number[digit_counter, 1])
		
		if digit_counter % -3 == 0
			new_number.prepend(',') if digit_counter != str_number.length * -1
		end
		digit_counter -= 1
	end

	p new_number
end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# => My process to break the problem down was to focus on looping through the number starting from the right side and 
# => consider what needs to happen as that process happens.  I wanted to do it without having to reverse the string, but 
# => wasn't sure how initially.  I did eventually get that to work during refactoring though.

# Was your pseudocode effective in helping you build a successful initial solution?
# => Yes, I think I was really helped by following my pseudocode steps.  The only glitch I had at first was that I didn't start
# => my counter with a 0 which caused a problem temporarily.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# => I used prepend and a slice to refactor the solution.  Prepend was pretty straightforward as I knew I wanted to add characters to the
# => left side of my string.  The slice was a little tricky because the Ruby Doc shows the heading as "slice(index, length)" but in 
# => reality you don't use the word slice, you just put a [index, length] on the end of your string variable, so the documentation misled me at first.

# How did you initially iterate through the data structure?
# => I initially used an each_char method to iterate through the data.  That worked well, but I changed to a while loop when I refactored 
# => because that helped my also implement a modulus for tracking when I need to insert the commas.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# => Yes and no.  I think both solutions are pretty readable.  I think that the each_char iteration is clear to read, but I didn't like having to 
# => reverse my strings twice in order to work from the right to left.  Because of that, I think the refactored solution is a little nicer 
# => as far as that readibility goes.
