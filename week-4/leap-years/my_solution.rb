# Leap Years

# I worked on this challenge with Angelika Yoder..


# Your Solution Below

# if year % 4 == 0
  #   true
  # else
  #   false
  # end

# def leap_year?(year)

#   return false if (year % 4 == 0) and (year % 100 == 0) and (year % 400 != 0)
#   return true if year % 4 == 0
#   return true if year % 100 == 0
#   return true if year % 400 == 0

#   false
# end

def leap_year?(year)
  if year % 4 == 0 then
    if year % 100 == 0 then
      if year % 400 == 0 then
        return true
      else
        return false
      end
    else
      return true
    end
  else
      return false
  end
end