# 0. Pseudocode

# What is the input? An array, minimum length of the array and an optional default value.
# What is the output? (i.e. What should the code return?) Completed array.
# What are the steps needed to solve the problem?
# Compare length of array to minimum length. 
# If it's <= return original array. 
# Check if the minimum length = 0; return original array.
# Check if default value is there, if not assign default value nil. 
# Loop through original array and set values to temporary array.
# Continue adding default values until we reach minimum length. 








# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#   if min_size == 0
#     return array
#   end
  
#   if min_size <= array.length
#     return array
#   end
  
#   temp_array = []
#   array.collect! { | x | temp_array.push(x) }
    
#   while array.length < min_size 
#     array.push(value)
#   end
    
#   return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here

#   if min_size == 0
#     return array
#   end
  
#   if min_size <= temp_array.length
#     return array
#   end
  
#   temp_array = []
#   array.collect { |x| temp_array.push x }

#   while temp_array.length < min_size 
#     temp_array.push value
#   end
    
#   return temp_array
      
# end




#Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size == 0
    return array
  end
  
  if min_size <= array.length
    return array
  end
  
  # temp_array = []
  # array.collect! { | x | temp_array.push(x) }
    
  while array.length < min_size 
    array.push(value)
  end
    
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  temp_array = []
  array.collect { |x| temp_array.push x }

  if min_size == 0
    return temp_array
  end
  
  if min_size <= temp_array.length
    return temp_array
  end
  
  #temp_array = []
  #array.collect { |x| temp_array.push x }

  while temp_array.length < min_size 
    temp_array.push value
  end
    
  return temp_array
      
end

# Reflection

# Were you successful in breaking the problem down into small steps?
# => Yes, I think we successfully identified the individual basic steps of what needed done.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Yes and no.  A few of the steps were very easy to translate, like the steps to check for an array that meets the size or has a pad of 0.
# => We had a few syntax issues with the looping which caused a little struggle, but not too bad.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => Definitely not successful.  We had issues with the temp array populating, and severe issues with pad being non-destructive.  
# => We researched a lot and did a lot of trial and error until we got the non-destructive method working and passing tests.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => No, I think that most of our refactoring was focused on getting the tests to pass rather than cleaning up.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think our solution is pretty readable.  Our variables are descriptive, although I would probably consider changing "array"

# What is the difference between destructive and non-destructive methods in your own words?
# => Destructive methods will perform actions and return variables to the program that have been changed, while non-destructive methods will
# => perform actions but return separate copies of vaiables, leving the originals intact.




