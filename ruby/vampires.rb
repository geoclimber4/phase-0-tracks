

puts "How many employees will be processed?"
num = gets.chomp.to_i
until num == 0
	
	def boolean(boo)
			if boo.to_s == "y"
				boo = true
			elsif boo.to_s == "n"
				boo = false
			else puts "Invald answer, please answer y or n"
		end
	end

	puts "What is your name?"
	emp_name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp.to_i
	def agecheck(age, birth_year)
		if age == 2017 - birth_year
			v_age = true
		else
			v_age = false
		end
	end
	agecheck = agecheck(age, birth_year)		
	puts "Our company serves garlic bread. Should we order you some?"
	garlic = gets.chomp
	garlic = boolean(garlic)
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp
	insurance = boolean(insurance)
	
	until allergy == "done"
		puts "Enter your allergies one at a time. Type done when complete"
		allergy = gets.chomp
		if allergy == "sunshine"
			puts "Probably a vampire"
		end
	end	
	puts emp_name
	puts age
	puts birth_year
	puts garlic
	puts insurance
	puts agecheck


	if agecheck == true && garlic == true
		puts "Probably not a vampire"
	elsif agecheck && garlic == false || insurance == false
		puts "Probably a vampire"
	elsif agecheck && garlic == false && inurance == false
		puts "Almost certainly a vampire"
	else puts "Results inconclusive"
	end
puts "Next employee please"
num = num-1
end
puts "all done!"
