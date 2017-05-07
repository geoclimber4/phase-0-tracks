#Create a game for 6.7 solo challenge

# One user can enter a word (or phrase, if you would like your game to support that), 
#  and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. 
# So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", 
#  which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.


#game class
class GuessWord
	attr_reader :magic_word
	attr_accessor :guesses_left
	attr_accessor :user_progress
	attr_reader :is_over

	def initialize
		@magic_word = "popsicle"
		#@guesses_left set to word length + 5
		@guesses_left = (@magic_word.length + 5)
#is_over created to end game
		@is_over = false
	end
#method check_word 
	def check_word(guess)
#Convert magic_word to array
		magic_word_array = @magic_word.split("")
#created new array to handle user solutions for easy display
		user_array = []
#Iterate through array to see if letters matches guess	
		index = 0
		while index < @magic_word.length
			if magic_word_array[index] == guess
				#prints array with _ for empty spaces except for letter guessed
				p guess
				user_array[index] = guess				
			else
				#print array with _ for empty spaces
				p "_"
				user_array[index] = "_"
			end
		#put code here to track user progress	
		index += 1
		end
#need to track user
#converts user array back to string for readable output		
		@user_progress = user_array*" "
		p "Your word is #{user_progress}"
		if @magic_word == @user_progress
			@is_over = true
		end
	end
end

#user interface
#Tells user the rules and how many tries

game = GuessWord.new
puts "Can you guess the magic word? You only get #{@guesses_left} tries..."



#make loop here to allow user to input. Loop will have until for counter and if/elsif statements if  word is guessed.
until @is_over == true
	p "Guess a letter"
	letter = gets.chomp
	p game.check_word(letter)
	if @is_over == false
		p "Keep trying. You have #{@guesses_left}. Guess another letter"
		p game.check_word(letter)
	end
# put counter here
#	@guesses_left -= 1
end
p "You won with #{@guesses_left} guesses left!"


#after exit, either give congratulations or taunting message here