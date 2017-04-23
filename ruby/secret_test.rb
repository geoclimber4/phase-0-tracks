#An encrypt method that advances every letter of a string one letter forward. 
#So "abc" would become "bcd". For now, you can assume lowercase input and output. 
#Any space character should remain a space character -- no change made.

#gets user input
puts "Give me a string"
string = gets.chomp

def encrypt(string)
	#indexes string for each letter (three letter max)
	
	if string[0] == "z"
		string[0] = "a"
		puts string[0] + string[1].next + string[2].next
	else	
		puts string[0].next + string[1].next + string[2].next
	end
end	

#calls method
puts encrypt(string)

#A decrypt method that reverses the process above. 
	puts "give me three letters"
	str = gets.chomp

def decrypt(str)

	alpha = "abcdefghijklmnopqrstuvwxyz"
	p alpha[(alpha.index(str[0]) -1)] + alpha[(alpha.index(str[1]) -1)] + alpha[(alpha.index(str[2]) -1)]
end
p decrypt(str)
#Release 4
#p decrypt(encrypt("swo"))
