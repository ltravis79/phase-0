# Calculate a Grade

# I worked on this challenge with: Angelika Yoder.


# Your Solution Below

# Note- we worked out two solutions to this problem.  THe first one is below, but commented out.
#   The second one is left active below that.


# def get_grade(grade)

#   case grade
#   when 1..59   then "F"
#   when 60..69  then "D"
#   when 70..79 then "C"
#   when 80..89 then "B"
#   when 90..100 then "A"

#   end
# end

def get_grade(grade)
  if grade >=1 && grade <=59 then
    letter_grade = 'F'
  elsif grade >=60 && grade <=69 then
    letter_grade = 'D'
  elsif grade >=70 && grade <=79 then
    letter_grade = 'C'
  elsif grade >=80 && grade <=89 then
    letter_grade = 'B'
  elsif grade >=90 && grade <=100 then
    letter_grade = 'A'
  end
    return letter_grade
end