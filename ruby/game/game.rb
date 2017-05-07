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
# getter and setter method to acess variables
	attr_accessor :guesses_left, :user_progress, :magic_word, :is_over

	def initialize(magic_word)
		@magic_word = magic_word
		#@guesses_left set to word length + 5
		@guesses_left = (@magic_word.length + 5)
#is_over created to end game
		@is_over = false
#creates a user progress variable to keep track of previous guesses
		@user_progress = "_" * @magic_word.length
	end
#method check_word 
	def check_word(guess)
#Convert magic_word to array
		magic_word_array = @magic_word.split("")
#created new array to handle user solutions for easy display. This should update each loop
		user_array = @user_progress.split("")
#Iterate through array to see if letters matches guess	
		index = 0
		while index < @magic_word.length
			if magic_word_array[index] == guess
				#updates array for the correct letter to replace _
				user_array[index] = guess				
			end
		index += 1
		end
#converts user array back to string for readable output		
		@user_progress = user_array*""
		p "So far you have #{user_progress}"
		return @user_progress
	end
end

#user interface
#User 1 input: allows first person to set the magic word
puts "User 2, cover your eyes. User 1, enter the magic word"
magic_word = gets.chomp

#Starts the game
game = GuessWord.new(magic_word)
#Gives Instructions to user 2 with updated guesses left count
puts "That's it for you User 1, now get User 2 over here."
puts "Ok User 2, Can you guess the magic word? You only get #{game.guesses_left} tries..."
#make loop here to allow user to input. Loop will have until for counter and if/elsif statements if  word is guessed.
until game.is_over == true
#User prompted for their guess
	p "Guess a letter"
	letter = gets.chomp
#Saves output of game to user progress variable 
	game.user_progress = game.check_word(letter)
#option to lost game based on too many guesses
	if game.guesses_left == 0
		p "Sorry you lost. I'm not good at taunting messages"
		game.is_over = true
#option to win game if magic word matches user progress word
	elsif game.magic_word == game.user_progress
		p "You won!"
		game.is_over = true
#Loop continues with a status update on the game
	else
		p "Keep trying. You have #{(game.guesses_left - 1)} guesses left. Guess another letter"
	#	p game.check_word(letter)
	end
# put counter here

#	p "You have #{game.guesses_left} guesses left"
	game.guesses_left = game.guesses_left - 1
end
p "Game over! Thanks for playing!"


#after exit, either give congratulations or taunting message here