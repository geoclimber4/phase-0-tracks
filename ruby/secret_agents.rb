#

#define method: use the .next on the indext of each letter
def encrypt(string)

  	if string[0] == "z"
		string[0] = "a"
		p string[0] + string[1].next + string[2].next
	else	
		p string[0].next + string[1].next + string[2].next
	end
end

#prints result of each letter using the above method (for Release 3)
#p encrypt("abc")
#p encrypt("zed")

#define method decrypt to print the previous letter for each string
def decrypt(str)
alpha = "abcdefghijklmnopqrstuvwxyz"
	p alpha[(alpha.index(str[0]) -1)] + alpha[(alpha.index(str[1]) -1)] + alpha[(alpha.index(str[2]) -1)]
end

#print test results of above method
#p decrypt("bcd")
#p decrypt("afe")

# Running the test below to see if it works in a full circle

#Driver Code
puts "Would you like to encrypt or decrypt a password?"
pass = gets.chomp

if pass == "encrypt"
	puts "What is the password?"
	string = gets.chomp
	p encrypt(string)
elsif pass == "decrypt"
	puts "What is the password?"
	str = gets.chomp
	p decrypt(str)
else
	puts "I'm sorry, I didn't understand you."
end
#p decrypt(encrypt("abc"))