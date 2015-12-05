puts 'Hello, what\'s your first name? '
first_name = gets.chomp
puts 'What\'s your middle name? '
middle_name = gets.chomp
puts "What\'s your last name? "
last_name = gets.chomp
puts 'Hello there ' + first_name + ' ' + middle_name + ' ' + last_name + '!!!'
puts 'Do you have a favorite number? '
fav_num_str = gets.chomp
fav_num = fav_num_str.to_i + 1
puts 'That\'s a good one, but what do you think about ' + fav_num.to_s + '?  It\'s a little bit bigger...'

#############

# Exercise Links
#
# Exercise 1 - Return a formatted address:  https://github.com/ltravis79/phase-0/blob/master/week-4/address/my_solution.rb
# Exercise 2 - Defining Math Methods: https://github.com/ltravis79/phase-0/blob/master/week-4/math/my_solution.rb

# Reflection...
#
# How do you define a local variable?
#    You define a local variable by simply giving it a name that starts with a lower case letter, and assigning it a value.

# How do you define a method?
#    You define a method by using the keyword def, followed by the method name and any parameters.  You complete the method with the keyword end

# What is the difference between a local variable and a method?
#    Both a local variable and a method help to make your code reuseable, but a variable is used to hold a certain piece of information.
#    A method is an entire set of commands that do something, rather than hold something.  A method is almost a miniature program.

# How do you run a ruby program from the command line?
#    To run a ruby program, use the command ruby followed by the program name.  For example - ruby my_program.rb

# How do you run an RSpec file from the command line?
#    To run an RSpec file, simply type rspec followed by the name of your specs file (not the actual program).  For example - rspec test_specs.rb

# What was confusing about this material? What made sense?
#    The majority of this challenge made sense to me, it was pretty straightforward.  I did struggle however (more than once!) with 
#    remembering to convert an integer variable to a string when trying to output it with other text.
