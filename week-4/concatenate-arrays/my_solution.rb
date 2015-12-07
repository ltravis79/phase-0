# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  if array_1.length == 0 && array_2.length == 0 then
  	return []
  end

  new_array = []
  
  array_1.each { |val| new_array.push(val) }
  array_2.each { |val| new_array.push(val) }

  return new_array
end