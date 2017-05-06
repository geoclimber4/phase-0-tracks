#Create a game for 6.7 solo challenge

# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. 
# So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.


#game class
class GuessWord
	attr_reader :magic_word
	attr_reader :counter

	def initialize
		@magic_word = "popsicle"
		#@counter set to word length + 2
		@counter = (@magic_word.length + 2)
	end
#method check_word 
	def check_word(word)
		letter_array = word.chars
p @magic_word
p @counter

	end

end

#user interface
#Tells user the rules and how many tries
#puts "Can you guess the magic word? You only get #{counter} tries..."
game = GuessWord.new
game.check_word(apple)

#make loop here to allow user to input. Loop will have until for counter and if/elsif statements if  word is guessed.

#after exit, either give congratulations or taunting message here