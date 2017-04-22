#An encrypt method that advances every letter of a string one letter forward. 
#So "abc" would become "bcd". For now, you can assume lowercase input and output. 
#Any space character should remain a space character -- no change made.

#gets user input
puts "Give me a string"
string = gets.chomp

def encrypt(string)
	#indexes string for each letter (three letter max)
	puts string[0].next + string[1].next + string[2].next
end	

#calls method
puts encrypt(string)

#A decrypt method that reverses the process above. 
puts "Give me another string"
string2 = gets.chomp

def decrypt(string2)

end