#Interior Design Application
#details of a given client: the client's name, age, number of children, decor theme
interior_design_application = {
	name: "",
	age: "",
	num_children: "",
	decor_theme: "",
	like_orange: ""
}

puts "What is your name?"
interior_design_application[:name] = gets.chomp
puts "What is your age?"
interior_design_application[:age] = gets.to_i
puts "How many children do you have?"
interior_design_application[:num_children] = gets.to_i
puts "What decor theme do you prefer?"
interior_design_application[:decor_theme] = gets.chomp
puts "Do you like the color orange?"
interior_design_application[:like_orange] = gets.chomp
puts "Do you need to change any information? (y/n)"
if interior_design_application[:like_orange] == "y"
	interior_design_application[:like_orange] = true
else
	interior_design_application[:like_orange] = false
end		
change_info = gets.chomp


if change_info == "y"
	puts "What field would you like to change? Choose from the following:
	name, age, children, decor, orange, or none"
	field = gets.chomp
	if field == "name"
		puts "What is your name?"
		interior_design_application[:name] = gets.chomp
	elsif field == "age"
		puts "What is your age?"
		interior_design_application[:age] = gets.to_i
	elsif field == "children"
		puts "How many children do you have?"
		interior_design_application[:num_children] = gets.to_i
	elsif field == "decor"
		puts "What decor theme do you prefer?"
		interior_design_application[:decor_theme] = gets.chomp
	elsif field == "orange"	
		puts "Do you like the color orange?"
		interior_design_application[:like_orange] = gets.chomp
			if interior_design_application[:like_orange] == "y"
			interior_design_application[:like_orange] = true
			else
				interior_design_application[:like_orange] = false
			end	
	else
		puts "OK, so no change..."
	end	
end

puts "Here is your application"
p interior_design_application
