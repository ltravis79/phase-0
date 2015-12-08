# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define a variable as empty hash
  # set default quantity
  # print the list to the console (using p)
# output: hash containing items and values

# Method to add an item to a list
# input: item name and optional quantity, hash list
# steps:
# check hash for existing key: value pair
# if there, add to existing quantity
# if not, add the new key: value pair
# output: updated hash

# Method to remove an item from the list
# input: the key we're looking for (as string), hash list
# steps:
# iterate through hash keys to find match
# remove matched pair
# output: updated hash

# Method to update the quantity of an item
# input: key to look for, hash list, quantity changed
# steps: find key within hash
# update value of that key with value parameter
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: print each key:value on a new line
# output: puts each item from hash as strings and integers


# Initial Solution Below

def create_list items
	list = {}
	default_qty = 1

	items.split(' ').each { |word| list[word] = default_qty }
	p list
end

def add_item list, new_item, qty 
	if list.include? new_item
		list[new_item] += qty
	else
		list[new_item] = qty
	end
	p list
end

def remove_item list, item
	list.delete(item)
end

def update_item list, item, qty
	list[item] = qty
end

def print_list list
	list.each_pair { |item, value| puts "#{item}: #{value}" }
end


list = create_list "carrots apples cereal pizza"
add_item list, "lemonade", 2
add_item list, "tomatoes", 3
add_item list, "onions", 1
add_item list, "ice cream", 4
remove_item list, "lemonade"
update_item list, "ice cream", 1
print_list list



