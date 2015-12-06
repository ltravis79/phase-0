# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if (a == 0 || b == 0 || c == 0) then
  	return false
  elsif (a == b && b == c) then
  	return true
  elsif (a+b > c && a+c > b && b+c > a) then
  	return true
  else 
  	return false
  end
end