#########################
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][0] # "inner"
p array[1][1] # ["eagle", "par", ["FORE", "hook"]] 
p array[1][1][2] # ["FORE", "hook"]
p array[1][1][2][0] # "FORE" 

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer] # {:inner=>{"almost"=>{3=>"congrats!"}}}
p hash[:outer][:inner] # {"almost"=>{3=>"congrats!"}}
p hash[:outer][:inner]["almost"][3] # "congrats!"

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array] # ["array", {:hash=>"finished"}]
p nested_data[:array][1] # {:hash=>"finished"}
p nested_data[:array][1][:hash] # "finished"

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# for x in 0..(number_array.length - 1)

#   if number_array[x].kind_of?(Array)

#     for y in 0..(number_array[x].to_s.length - 1)
      
#       number_array[x][y] = number_array[x][y] + 5

#     end
      
#   else
#       number_array[x] = number_array[x] + 5
#   end
# end

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! { |num| 
  p num
  
  if num.kind_of?(Array)
    num.map! { |num2| num2 += 5 }
  else
    num += 5
  end

  }
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |x| 
  if x.kind_of?(Array)
    x.map! { |y| 
        if y.kind_of?(Array)
          y.map! { |z| 
            z +'ly'
          }
        else
          y + 'ly'
        end
    }
  else
    x + 'ly'
  end
}

p startup_names


# REFLECTION
# What are some general rules you can apply to nested arrays?
# => You need to remember that each nested array has its own set of indexes starting at 0, so each time you step into the
# => element that contains an array, you need to reset the counter you might be working with.  When you retrieve data,
# => you need to keep track of how many nests deep you need to go to find the data, and string that many [][] together to 
# => access what you want, with the proper index number insede the brackets.

# What are some ways you can iterate over nested arrays?
# => You can iterate over nested arrays using the same methods for iterating over normal arrays, such as map or each.  
# => However, you need to give each nested array it's own iterator.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => I used methods I was already familiar with, namely map, but the kind_of? method was a little new to me.  It made sense 
# => that we needed some sort of way to tell if the individual element was an array in order to know to iterate over it as well.


