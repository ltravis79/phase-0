# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Create a method assert
#    Test the statements in the code block when the assert is started
#    UNLESS the result is true (i.e. IF the test is false)
#       Raise an error stating the assertion failed
#    END UNLESS
#
#
# Assign a person's name to a variable
# Call the assert method with a block of statements that check to see if the name equals a specific name
# Assert once for name to be bettysue
# Assert once for name to be billybob


# 3. Copy your selected challenge here
class CreditCard
  def initialize(card_number)
    if card_number.to_s.length != 16 
      raise ArgumentError.new("Card Number needs to be 16 digits long")
    end
    @card_number = card_number
  end
  
  def check_card
    digits = @card_number.to_s.chars.to_a
    
    digits.each_index { |index| 
      if index % 2 == 0
        digits[index] = (digits[index].to_i * 2).to_s
      end
      }
    
    sum = 0 
    digits = digits.join.chars.to_a
    digits.each { |value| sum += value.to_i }
    
    if sum % 10 == 0
      return true
    else return false
    end
  end
  
end

# Original challenge driver code...
# card = CreditCard.new(4408041234567901)
# p card.check_card



# 4. Convert your driver test code from that challenge into Assert Statements
def assert (test_number)
	raise "#{test_number} Assertion Failed!" unless yield
end

assert("Test 1") { CreditCard.new(4408041234567901).check_card }
assert("Test 2") { CreditCard.new(4408041234567904).check_card }


# 5. Reflection
# What concepts did you review or learn in this challenge?
# => I learned about creating better program tests using assert and yield statements.  This lets you test for different scenarios and pinpoint issues
# => when certain tests fail.

# What is still confusing to you about Ruby?
# => In this challenge, it took a few minutes for me to really grasp how the test was happening.  I understood that the yield statement moves
# => the executing code into the block you provide, but when reading the sample and attempting to pseudocode it, I couldn't get the idea of how 
# => the test happened.  Once I finally realized that the unless statement was evaluating the entire block from the yielded code as a boolean it made sense.

# What are you going to study to get more prepared for Phase 1?
# => I think I need to review the differences between some of the enumerables and iterating.  I'm not always clear on when to use each compared to map, 
# => and other situations like that.  But today I wanted to try out a new concept rather than review, so I went with asserts.
