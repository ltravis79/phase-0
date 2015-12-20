# Your Names
# 1) Lindsey Ullman
# 2)

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def baking_plan_calc(item_to_make, num_of_ingredients)
  # Assign number of ingredients per desired item
  treat_ingredient_quantity = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Evaluate item_to_make to see if it exists in our hash
  fail ArgumentError, "#{item_to_make} is not a valid input" unless treat_ingredient_quantity.include?(item_to_make)
  
  # Get the amount of ingredient required for the desired treat, and calculate the amount left over as well
  ingredient_quantity = treat_ingredient_quantity[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredient_quantity
  
  # Added functionality
  # If there is left over ingredient, recommend using it to bake additional items.
  # Not completely working yet in cases where there is enough leftover to allow for more than one option 
  # (i.e. pie, 13 leaves 6 extra ingredient, so cookie or cake could be suggested. But code is not suggesting cake, only suggesting cookies. )
  # Need to come back to correct this
  if remaining_ingredients > 0
    extra_items = treat_ingredient_quantity.select { |treat, qty| qty <= remaining_ingredients }.max
    extra_item_name = extra_items[0]
  end

  # Put together string representing our results with the amount to bake.
  # In cases with leftover ingredient, concatenate additional information
  result = "Calculations complete: Make #{num_of_ingredients / ingredient_quantity} of #{item_to_make}"
  
  result += ", you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make #{remaining_ingredients / treat_ingredient_quantity[extra_item_name]} of #{extra_item_name}" if remaining_ingredients > 0

  
  result
end

# Driver code

# p baking_plan_calc("pie", 7)
# p baking_plan_calc("pie", 8)
# p baking_plan_calc("cake", 5)
# p baking_plan_calc("cake", 7)
# p baking_plan_calc("cookie", 1)
# p baking_plan_calc("cookie", 10)
# p baking_plan_calc("THIS IS AN ERROR", 5)
# p baking_plan_calc("ice cream", 5)
# p baking_plan_calc("pie", 13)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# => I learned that when creating hash variables, it is a good option to include the key and value description in the overall hash variable name.
# => I also learned that when writing if statements, it's good practice to write them trailing their action in cases where it is a one line action.

# Did you learn any new methods? What did you learn about them?
# => I learned that include, key, and has_key are all synonyms of eachother.  I also learned that there is a new preference for using fail instead of raise for errors.
# => The values_at method was new to me, and I learned that it returns an array of values, not just a single value itself

# What did you learn about accessing data in hashes? 
# => Accessing values using values_at was a new approach for me to review.  Other than that most of the hash work was concepts that was familiar to me.
# => It was also interesting to see how different methods return different types of data from a hash.  Some return the data in arrays, some return items invidually.

# What concepts were solidified when working through this challenge?
# => Some best practices on formatting code and variable names were solidified for me on this challenge.
