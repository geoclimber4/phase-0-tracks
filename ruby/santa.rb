#Santa class
class Santa
#getter method syntactic suger, allows read access
	attr_reader :ethnicity, :reindeer_ranking
#setter method syntactic sugar, allows both read and write access
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		p "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		p "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies (cookie_name)
		p "That was a good #{cookie_name}"
	end

	def identify
		p "I am a #{@gender} #{@ethnicity} santa"
	end
# Old style of getter method replaced at top of page per release 3
# #getter method
# 	def age
# 		@age
# 	end

# #getter method
# 	def ethnicity
# 		@ethnicity
# 	end

# #getter method
# 	def gender
# 		@gender
# 	end

#setter method for birthday
	def celebrate_birthday
		@age = @age + 1
	end

#setter method to drop reindeer to last place
	def get_mad_at(reindeer)
		reindeer_ranking[reindeer.index] = -1
	end


# Old style of setter method replaced at top of the page per Release 3
# #setter method to reasign @gender
# 	def gender=(new_gender)
# 		@gender = new_gender
# 	end

end

#array filled with santas to start
#array commented out for new santa generator method
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

genders_array = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities_array = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#loop to create 100 Santas with random genders and ethnicities
santas = []
	counter = 0
	until counter == 100
#santas created will have a random gender and ethnicity from above arrays
		i = Santa.new(genders_array.sample, ethnicities_array.sample)
#creates random age between 0 and 140
		i.age = rand(0..140)
		p i
#add created santas to array.
		santas << i
		counter += 1
	end

#Driver Code

p santas
santas.each do |santa|
	santa.speak
	santa.eat_milk_and_cookies("sugar cookie")
	santa.identify
end

santas[0].celebrate_birthday
p "I am #{santas[0].age} years old"
p "I am #{santas[0].ethnicity} ethnicity"
p "Do you want to change the gender of a santa?"
change = gets.chomp
p change

#Gives user option to change gender if they answer yes
if change.downcase == "yes"
	p "Current gender is #{santas[0].gender}. What would you like the gender to be?"
	santas[0].gender = gets.chomp
else
	p "Gender stays #{santas[0].gender}"
end


# Release 0 driver code kept for records
# chris = Santa.new
# p chris.speak
# p chris.eat_milk_and_cookies("sugar")

