#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: None
# Output: Name and greeting to the terminal
# Steps:
# Initialize NameData class, assign first name to a variable
# Initialize the Greetings class
#   Create a new instance of the NameData class for the greeting to use
# Hello method
#   Output a greeting with the student name from the NameData object


class NameData
  attr_reader :name
  def initialize
  	@name = 'Lindsey'
  end
end


class Greetings
  def initialize
  	@student = NameData.new
  end

  def hello
  	puts "Hello, #{@student.name}.  How are you today?"
  end
end

greet = Greetings.new
greet.hello

# Reflection
# Release 1 Questions
# What are these methods doing?
# => These methods are either setting or returning instance variables for the class.

# How are they modifying or returning the value of instance variables?
# => The returning methods simply have one line that evaluates the variable we want to return
# => The modifying methods assign the instance variables using a @variable = value syntax

# Release 2 Questions
# What changed between the last release and this release?
# => The what_is_age method has been taken out, and the method call to return the age has been changed.

# What was replaced?
# => The attr_reader :age has been added to replace the what_is_age method.  The method call has been changed
# => from instance_of_profile.what_is_age to instance_of_profile.age

# Is this code simpler than the last?
# => I think the code is simpler.  In particular I think the statement to call the age is a little easier to read, simplay saying .age on the instance

# Release 3 Questions
# What changed between the last release and this release?
# => The change_my_age method has been removed, and the method call to set the age has been changed.

# What was replaced?
# => The change_my_age method has been replaced with a attr_writer :age.

# Is this code simpler than the last?
# => I think this is simpler because it is fewer lines, and again thestatement to call the method is a little easier to read, simply saying .age = 28


# What is a reader method?
# => A reader method is a method that returns an instance variable for an instance of a class

# What is a writer method?
# => A writer method is a method that sets a value of an instance variable for an instance of a class

# What do the attr methods do for you?
# => The attr methods act as a shortcut for either a reader or wrieter method.

# Should you always use an accessor to cover your bases? Why or why not?
# => I don't think you should always use an accessor method.  You may have instance variables that you may not want to easily change, 
# => and it could also become confusing to troubleshoot when something is changing a value if you don't want it to, because you may not 
# => know which attr method is causing the change.

# What is confusing to you about these methods?
# => I actually think these methods are pretty straightforward and not confusing.
