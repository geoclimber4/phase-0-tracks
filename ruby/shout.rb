#Release 1

# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
# end

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!" + " =) :)"
#   end
# end

# puts Shout.yelling_happily("woohoo")
# puts Shout.yell_angrily("bahhhh")

#Release 2
#Create a mixin version of the Shout module
module Shout
	def yelling(words)
		puts words.upcase + "!!!!!!"
	end
end

#Create two classes with Shout mixed in
class Happy
	include Shout
	def smile
		puts ":)"
	end
end

class Angry
	include Shout
	def frown
		puts ":("
	end
end

#Driver Code
#instantiates instances of your classes  
happy = Happy.new
happy.smile
happy.yelling("hooray")

angry = Angry.new
angry.frown
angry.yelling("booooo")

