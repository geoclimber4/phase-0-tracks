#Create a method that takes a spy's real name and converts it by swapping first and last name and changes vowels to next vowl and consonant to next consonant

#Release 0: Name Swapper Method
#Take spy_name and create fake name
#swap first and last name

def name_swapper(spy_name)
	#create array to and put first name last name in.
	spy_array = spy_name.split(' ')
	#Flips the array (last name then first name)
	spy_array.rotate!
	spy_name_new = spy_array*" "
	return spy_name_new
end


#Release 0 Part 2
#Change all of the vowels (a,e,i,o,u) to the next vowel
#Change all of the consonants to the next consonant

def spy_letter_encrypt(spy_name)
	# vowel string with extra a to handle loop cases for u
	vowel = "aeioua"
	#no_vowel string with extra b to handle loop cases for z
	no_vowel = "bcdfghjklmnpqrstvwxyzb"
	index = 0
	while index < spy_name.length
	#if statement to alternate handle flow from vowels, consonants, and spaces
	      if spy_name[index].include?("a") || spy_name[index].include?("e") || spy_name[index].include?("i") || spy_name[index].include?("o") || spy_name[index].include?("u")
	      	spy_name[index] = vowel[(vowel.index(spy_name[index])+1)]
	#This line added to handle space character in names
	    elsif spy_name[index] == " "
	      spy_name[index] = " "
	    else
	      spy_name[index] = no_vowel[(no_vowel.index(spy_name[index])+1)]
	    end
	  index += 1
	end
	return spy_name
end

#hash created outside of loop to store original user names and their corresponding value
spy_hash = {}

#Driver Code

#loop created for input of multiple names
user_input = "no"
until user_input == "quit"

	puts "What is the spy's name?"
	original_name = gets.chomp

	#Runs name swapper to reverse first and last name method
	name_flip = name_swapper(original_name)
	p name_flip

	#Runs letter encrypt for vowels and consonants
	spy_name = spy_letter_encrypt(name_flip)
	p spy_name

	#New hash to store the name with corresponding spy names
	spy_hash.store(original_name, spy_name)

	#option to exit from loop from multiple inputs
	p "type quit if done. Otherwise hit enter to keep going"
	user_input = gets.chomp
end

#prints spy_hash names
spy_hash.each do |x, y|
  puts "Name #{x}. Spy Name #{y}."
end



