# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  if list_of_words.length == 0 then
  	return nil
  end

  shortest = list_of_words[0]
  list_of_words.each { |word| 
  	if word.length <= shortest.length then
  		shortest = word
  	end
  }
  return shortest
end