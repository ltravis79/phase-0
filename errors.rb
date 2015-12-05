# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
  # while true
    # puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The file with the error is called errors.rb
# 2. What is the line number where the error occurs?
# => The error occurs on line 170.
# 3. What is the type of error message?
# => This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => Ruby received unexpected end-of-input, it was really expecting keyword_end
# 5. Where is the error in the code?
# => The interpreter was expecing the keyword 'end' following the end of the last line, after the text "...below as a comment."
# 6. Why did the interpreter give you this error?
# => The interpreter says the error is on line 170, but it is really because there is a missing line at line 15.  There needs to be an end to the while loop in addition to the end of the method.  The interpreter scanned all the way to the end of the file looking for 'end' and didn't find it.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => The error is on line 35.
# 2. What is the type of error message?
# => This a a NameError
# 3. What additional information does the interpreter provide about this type of error?
# => There is an undefined local variable or method `south_park'
# 4. Where is the error in the code?
# => There is no arrow pointing to a specific part of the line, but the error really is the whole line 35
# 5. Why did the interpreter give you this error?
# => The program is trying to either call a method south_park or use a variable south_park, but there is no method or variable defined to match the name, so the interpreter doesn't know what to do with it

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => The error is on lone 50.
# 2. What is the type of error message?
# => It is a NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter says there is an undefined method `cartman'
# 4. Where is the error in the code?
# => There's no arrow pointing to a location, the whole line is a problem.
# 5. Why did the interpreter give you this error?
# => The program has tried to call a method called cartman, but there's no corresponding method defined, so there's no method to run

# --- error -------------------------------------------------------

# def cartmans_phrase
  # puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => THe error is on line 65.
# 2. What is the type of error message?
# => This is an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter says there is the wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => The interpreter is stating that the error on line 65 is coming from the call on line 69
# 5. Why did the interpreter give you this error?
# => The program is trying to pass an argument to the cartmans_phrase method, but the method is not set up to accept any parameters

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => The error is on line 84.
# 2. What is the type of error message?
# => It is an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter also states there is the wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => The error on line 84 is coming from the call on line 88.
# 5. Why did the interpreter give you this error?
# => The program is trying to call the method cartman_says without providing any arguments, but the method definition is expecting one.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => The error is on line 105.
# 2. What is the type of error message?
# => This is an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that it is the wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => The error is coming from the call on line 109.
# 5. Why did the interpreter give you this error?
# => The program is trying to call the cartmans_lie method with one argument, but it should be sending two arguments

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => The error is on line 124.
# 2. What is the type of error message?
# => This is a TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter states that a String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => The error is following the multiplication operator
# 5. Why did the interpreter give you this error?
# => The program is trying to multiply an integer by a string, which it doesn't understand how to do.  If the intent was to repeat a string, the syntax should be reversed.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => The error is on line 139
# 2. What is the type of error message?
# => It is a ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter says that something was divided by 0
# 4. Where is the error in the code?
# => The error is at the end of the line, on the right side of the division sign
# 5. Why did the interpreter give you this error?
# => The program is trying to divide 20 by 0, which is mathematically impossible and it causes an error.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => The error is on line 155
# 2. What is the type of error message?
# => This is a LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter says that it cannot load such file -- /Users/lindseyullman/phase0/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# => The error is following the command require_relative
# 5. Why did the interpreter give you this error?
# => The program is trying to utilize an external file called cartmans_essay.md, but it can't find the file on this computer since it doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => I think that the argument errors were the most difficult to read at first because they provide two different line numbers at different points of the error.
# How did you figure out what the issue with the error was?
# => The additional description that the error provdes was the best starting point for me to figure out the problem.  Once I read the description I could look at the line to try and see what the issue was.
# Were you able to determine why each error message happened based on the code? 
# => Yes, I was able to identify all of the problems by looking at the code.
# When you encounter errors in your future code, what process will you follow to help you debug?
# => For me the best approach seems to be reading the additional error description and then moving back to the code and looking at the line number provided.  The type of error is helpful, but I think the description is more helpful to me than the type, so I would focus on that first.
