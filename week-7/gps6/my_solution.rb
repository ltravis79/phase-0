# Virus Predictor

# I worked on this challenge with: Gino Paul M Capoi.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# Release 2:
# require_relative allows a ruby file access to data outside of the current file. It differs from require in the sense that require  looks into a pre specified location that was installed with Ruby. Whereareas require_relative can be given a path for the source file location.

# Release 3:
# For STATE_DATA they using the hash rocket syntax, while for the inner hashes they are using symbols. 
# 
# It's a "hashy-hash" because it a hash which contains more hashes inside
# STATE_DATA is a hash constant. It's scope inludes the file it is in and whatever other file that "require" s it. It has a global scope.
#
#

require_relative 'state_data'



class VirusPredictor
  
  # builds the instance of the class VirusPredictor the parameters that are needed for state density and population
  #assigns the instance variables to to the provided values
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  # calls the other two methods, predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculates amount of deaths based on population density of selected state and prints it
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = case 
      when @population_density >= 200 then (@population * 0.4).floor
      when @population_density >= 150 then (@population * 0.3).floor
      when @population_density >= 100 then (@population * 0.2).floor
      when @population_density >= 50 then (@population * 0.1).floor
      else (@population * 0.05).floor
    end
          
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # calculates speed of spread based on density puts out the result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case 
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => The outer hash in thestate_data file uses the hash rocket syntax for it's keys and values.  ex. "Arizona" => data
# => The inner hash of data for each key uses symbol syntax for it's keys.  ex. population: 1000000

# What does require_relative do? How is it different from require?
# => require_relative loads the ruby code from an external file into the current program by specifying a file name.  The require statement 
# => also loads external statements, but it is used to look inside of a predefined library that ruby is set up to reference on your computer.

# What are some ways to iterate through a hash?
# => You can use .each, .map, .each_key, .each_pair, and others to iterate through a hash.  We decided on the .each iterator which 
# => returns both a kay and a value for use within the iteration.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => The @ signs signifying instance variables stood out in both the method calls and definition, which eventually made us realize that 
# => since they are the same and available everywhere, we didn't need to pass them specifically.

# What concept did you most solidify in this challenge?
# => I think I got a little more clear on the .each iterator.  Initially we tried to use it with only a single block variable, but 
# => changed it to iterate using a key and a value at the same time, which made it easier to access the data.
