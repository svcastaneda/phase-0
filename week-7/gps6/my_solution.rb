# Virus Predictor

# I worked on this challenge with: Alex Mitzman.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
#
# require_relative is a realtive path to the location of the file.  Don't need to include .rb if you are already in a ruby file.
# use require when loading gems which are like libraries.

require_relative 'state_data'

class VirusPredictor

  # Defining instance variables and allows us to create an instance of the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling two methods that are defined below in the class
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  # private


  # Depending on the population density, it will run a formula to predict the number of deaths
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    case @population_density
    when 0..49 then number_of_deaths = (@population * 0.05).floor
    when 50..99 then number_of_deaths = (@population * 0.1).floor
    when 100..149 then number_of_deaths = (@population * 0.2).floor
    when 150..199 then number_of_deaths = (@population * 0.3).floor
    else number_of_deaths = (@population * 0.4).floor
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Depending on the population density of the state, it will return a speed of how fast the disease will spread.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    case @population_density
    when 0..49 then speed = 2.5
    when 50..99 then speed = 2
    when 100..149 then speed = 1.5
    when 150..199 then speed = 1
    else speed = 0.5
    end


    # if @population_density >= 200
    #   # speed += 0.5
    #   speed = 0.5
    # elsif @population_density >= 150
    #   # speed += 1
    #   speed = 1
    # elsif @population_density >= 100
    #   # speed += 1.5
    #   speed = 1.5
    # elsif @population_density >= 50
    #   # speed += 2
    #   speed = 2
    # else
    #   # speed += 2.5
    #   speed = 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

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

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# 1. iterate through STATE_DATA
# 2. create new instance of VirusPredictor for each state
# 3. run virus_effects for each state

STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, value[:population_density], value[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
What are the differences between the two different hash syntaxes shown in the state_data file?


What does require_relative do? How is it different from require?


What are some ways to iterate through a hash?


When refactoring virus_effects, what stood out to you about the variables, if anything?


What concept did you most solidify in this challenge?

