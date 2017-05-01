
# Release 1
class Puppy
end

# Printed each for the purpose of understanding the code.
p Puppy.methods

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p spot.class
p duchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
# Below method doesn't work yet
# spot.play_dead


# Release 2:
p str = String.new
p str.length
p str.empty?
p str += "huh."

p str = "some string"
p greeting = String.new("hello")
p greeting.length
p greeting.upcase
