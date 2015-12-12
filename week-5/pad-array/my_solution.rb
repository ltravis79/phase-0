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