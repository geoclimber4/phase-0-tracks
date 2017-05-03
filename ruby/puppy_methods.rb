class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#counter added to allow user input of woofs
  def speak(n)
    counter = 0
    until counter == n
      counter += 1
      p "Woof"
    end
  end

  def roll_over
    p "rolls over"
  end

#Dog years method with the generally accept 1 human year equals 7 dog years.
  def dog_years(n)
    d_years = n * 7
    p d_years
  end

  def dog_paw
    p "dog lifts paw"
  end
end

#class Kitten created for Release 2
class Kitten

  def initialize
    puts "Initializing new kitten instance ..."
  end

  def meow
    puts "MEOW!!!"
  end

  def scratch
    puts "Kitty scratches your face."
  end
end

#Driver Code

# Adds Scruffy to the Puppy class, then calls methods on him.
scruffy = Puppy.new
p scruffy.fetch("ball")
p scruffy.speak(2)
p scruffy.roll_over
p scruffy.dog_years(5)
p scruffy.dog_paw

#Creates array for kittens to go into
kitten_instance_array = []
fluffy = Kitten.new
fluffy.meow
fluffy.scratch

#Creates a unique array with 50 kitten names
counter = 0
 until counter == 50
  k_name = "Kitten Number #{counter}"
  kitten_instance_array << k_name
  p k_name
 counter += 1
 end

#Uses array from above to add each name to the Kitten class and pass 2 Kitten methods
kitten_instance_array.each do |kitty|
  kitty = Kitten.new
  kitty.meow
  kitty.scratch
end
