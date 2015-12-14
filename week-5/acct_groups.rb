# PSEUDOCODE

# Input: Array of Names
# Output: Hash of Names and Groups
# Steps to solve Problem
#
# Determine total number of students
# Determine the best number of groups
#    Divide students by 4 in order to place most students in groups of 4, the remainder of students will be 5th group members
# Create empty hash to store results
# ITERATE through array of names
#    Keep a counter from 1 to number of groups
#    Add a hash key for the name, and value of the group number
#    When group counter is higher than number of groups, reset it to 1
# END ITERATION
# Return our hash



# INITIAL SOLUTION
# def assign_groups(students)
# 	student_count = students.length
# 	group_count = student_count / 4

# 	assigned_students = {}

# 	group_counter = 1
# 	students.each { |student|
# 		assigned_students[student] = 'Group ' + group_counter.to_s
# 		group_counter += 1
# 		group_counter = 1 if group_counter > group_count
# 	}

# 	return assigned_students
# end



#REFACTORING
def assign_groups(students)
	student_count = students.length
	group_count = student_count / 4

	assigned_students = {}

	group_counter = 1

	students.sample(student_count).each { |student|
		assigned_students[student] = 'Group ' + group_counter.to_s
		group_counter += 1
		group_counter = 1 if group_counter > group_count
	}

	return assigned_students
end

# DRIVER CODE
student_list = ['Alex Forger','Alexander Nelson','Karen Ball','Christopher Bovio','Gino Paul Capio','Jonathan Chin','Claire Samuels','David Louie',
'David Spivey','Max Davis','Devin Mandelbaum','Afton Downey','Jordan Fox','Rebecca Gahart','Gary Wong','Hodges Glenn','Everett Golden','Christopher Graf',
'Alana Hanson','LeeAnne Hawley','Sabri Helal','Thomas Huang','Jeff Schneider','Jillian Dunleavy','Kevin Huang','KT Khoo','Andrew Kim','Joseph Kim','Nathan Knockeart',
'Brigitte Kozena','Donald Lang','Tiffany Larson','Liam Mackey','Johanna Lonn','Tyler McKenzie','Katie Meyer','Meagan Munch','Lucas Nagle','Lydia Nash',
'Jovanka Nikolovski','James O\'Neal','Greg Park','Patrick Oliphant','Peter Lowe','Lauren Reid','Roche Janken','David Rothschild','Susan Savariar',
'Kurt Schlueter','Sharon Claitor','Marshall Sosland','Catie Stallings','Steven King','Eric Tenza','Timur Catakli','Todd Seller','Dan Turcza',
'Lindsey Ullman','Raj Vashist','Violet Dang','Chris Wong','Angelika Yoder','Michelle Zulli']

student_groups = assign_groups(student_list)
p 'Lindsey\'s Group: ' + student_groups['Lindsey Ullman']
puts
puts 'All Students...'
student_groups.each_pair { |student, group| puts student + ': ' + group }


# REFLECTION
# What was the most interesting and most difficult part of this challenge?
# => Well copying, pasting, and cleaning up that student list was a pain but not because it was difficult, just a lot of students haha.
# => I think the most difficult part came during refactoring and my driver code.  I had wanted to output a list of the students 
# => sorted by their groups, so all the group 1, followed by 2, etc.  But I had some trouble finding a quality resource to implement for sorting.
# => I decided to stop looking after awhile, but would like to revisit it later hopefully.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => Yes, I think my pseudocode has definitely gotten better, it's becoming a little easier for me to use

# Was your approach for automating this task a good solution? What could have made it even better?
# => I think it was a good solution, but only if you want to view the group based on the students.  It would be better if
# => I can return data based on either group or student to allow some flexibility.

# What data structure did you decide to store the accountability groups in and why?
# => I went with a hash because it allowed me to store the student name along with their group, and a student can only be in one group, 
# => so that made for a good hash key.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => I found the .sample method for arrays which I used to randomize the incoming array, that way group numbers didn't assign simply
# => based on the order the student names came in.


