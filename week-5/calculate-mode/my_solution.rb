## Calculate the mode Pairing Challenge

# I worked on this challenge with: Lauren Reid

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? Array of most frequent items
# What are the steps needed to solve the problem?
#  Create a new hash to hold counts of items
#  Loop through array
#    Add a hash key for each item in the array
#    Increment the hash value for the item
#  Loop through the hash to identify the items with highest count values


# 1. Initial Solution
# def mode(array)
# the_list = Hash.new(0)
#   array.each {|x|
#     the_list[x] += 1
#   }
#   counter = 0
#   the_list.each_value {|value| 
#     if value >= counter
#       counter = value
#     end
#   }
#   mode_array = []
#   the_list.each {|key, value|
#     if value == counter
#       mode_array.push(key)
#     end
#     }
#   p mode_array
# end




# 3. Refactored Solution
def mode(array)
the_list = Hash.new(0)
  array.each {|x|
    the_list[x] += 1
  }
  mode_array = []
  the_list.each {|key, value|
    if value == the_list.values.max
      mode_array.push(key)
    end
    }
  p mode_array
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# => We implemented a hash to hold our data while evaluating the array.  We went with the hash because the values
# => coming form the array made for good hash keys, and since the key can only exist once for the hash we could 
# => use that to increment a value to count the instances.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# => Yes, I think so.  We both admitted to having struggled with previous pseudocode, so I think we approached 
# => the pseudocode a little more deliberately, and were more successful.

# What issues/successes did you run into when translating your pseudocode to code?
# => We forgot to include our local variables like the placeholder for the highest occurrence value in our pseudocode, 
# => so we had to sort of stop and figure out what we needed while we were writing the code.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We used each and each_value to interate through our content.  When we refactored we found a better way to get the highest value using .values.max, 
# => which wasn't an iterator, but it did help us eliminate one of our loops of iterations.

