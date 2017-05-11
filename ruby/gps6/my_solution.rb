# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require differs from require_relative in that require is an absolute path and 
# will often link to ruby gems or built-in libraries.

require_relative 'state_data'

class VirusPredictor

  # Initialize Method - defining instance variables when new instance is created
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# private added below for release 6 testing
 #private 
  # This method calls on the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"

  end
#uncomment private after testing
#  private

  # This method assigns a value to number_of_deaths based on a formula that changes
  # based on state population and population_density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end

# => commented out for testing (release 7)
#    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

  end

  # This method assigns a value to speed based on a formula that takes in to account
  # a state's population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

#   Commented our for release 7 testing
    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

# For each key (for each state) in the STATE_DATA hash, create an instance and
# call the virus_effects method on that instance

Uncomment after testing
STATE_DATA.each do |state, pop_info| 
  state = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  state.virus_effects
end

p alaska.speed_of_spread



#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?

# The first hash uses a state as the key, and the inner hash is the value. The inner has a more typical key and hash combination.

# What does require_relative do? How is it different from require?
#   Require relative links to the file in the immediate directory, the require can be directed to other directories.

# What are some ways to iterate through a hash?
# We iterated through the has using the .each method using the key and value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# It was unnecessarily declaring variables that were already accessable. 

# What concept did you most solidify in this challenge?
# The ability to refactor and DRY techniques to simplify code. I'm still a bit rusty with hashes.

