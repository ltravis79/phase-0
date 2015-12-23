# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Thomas Huang.
# I spent [2.25] hours on this challenge.

# Pseudocode

# Input: A credit card number.
# Output: True or False
# Steps:  
  #Method initialize 
  #Validate input, check if its a 16 digit number
  #If its not, raise arguement error.
  #Set instance variable
# Alorigthm method
# Define an empty array to hold number
  # Loop through the number digit by digit
  # Finding index and value
    # IF index % 2 == 0, multiply by 2
# Make one long string with numbers
# Separate long string into individual strings
# Put it back into array
# Add together
# Number % 10 == 0
# Return true or false
    

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

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
# card = CreditCard.new(4408041234567901)
# p card.check_card


# Refactored Solution
# class CreditCard
#   attr_accessor :card_number
   
#    def initialize(card_number)
#       raise ArgumentError.new("Card Number needs to be 16 digits long") if card_number.to_s.length != 16
#   end

# def check_card
#   digits = @card_number.to_s.chars.to_a
#   digits.each.to_s { |index| digits[index].to_i *= 2 if index % 2 == 0}
#   sum = 0
#   digits = digits.join.chars.to_a
#   digits.each{|value| sum += value.to_i}
#   sum % 10 ==0
# end
# end

# card = CreditCard.new(4408041234567906)
# p card.check_card


# REFLECTION
# What was the most difficult part of this challenge for you and your pair?
# => I think the part we struggled with the most was coming up with the right pseudocode and coming up with the right steps and variables needed.

# What new methods did you find to help you when you refactored?
# => The chars and join methods were new to me during this challenge.

# What concepts or learnings were you able to solidify in this challenge?
# => Some of the different iterators that I had only looked at briefly before, like each_index, were made a little more clear to me now.
