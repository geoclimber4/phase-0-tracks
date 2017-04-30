# # Array Drills

# zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
#                               "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
counter = 0
until counter == zombie_apocalypse_supplies.length 
p zombie_apocalypse_supplies[counter]
p "*"
counter += 1
end
# ----

# # 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# # in alphabetical order. Do not use any special built-in methods.
# # ----
def alpha_sort(ary)
n = 0

  while n < ary.length
    x = n + 1
    while x < ary.length
      if ary[n].downcase > ary[x].downcase
        ary[x] , ary[n] = ary[n] , ary[x]
      end
    x += 1
    end  
  n += 1
  end
end
alpha_sort(zombie_apocalypse_supplies)
p zombie_apocalypse_supplies

# # 3. Create a method to see if a particular item (string) is in the
# # zombie_apocalypse_supplies. Do not use any special built-in methods.
# # For instance: are boots in your list of supplies?
# # ----

def item_search (ary)
puts "What item are you looking for"
item = gets.chomp
	item_check = false
	n = 0
	while n < ary.length
		if ary[n] == item
			item_check = true
			puts "#{item} is here!"

		end
	n += 1
	end
	if item_check == false
		puts "No #{item} in here!"
	end
end
p item_search(zombie_apocalypse_supplies)

# # 4. You can't carry too many things, you've only got room in your pack for 5.
# # Remove items in your zombie_apocalypse_supplies in any way you'd like,
# # leaving only 5. Do not use any special built-in methods.
# # ----

def item_remover (ary)
	n = ary.length
	until n < 5
		ary.delete_at(n)
		n -= 1
	end
end	
item_remover (zombie_apocalypse_supplies)
p "Here is the list cut down to 5 items"
p zombie_apocalypse_supplies

# # 5. You found another survivor! This means you can combine your supplies.
# # Create a new combined supplies list out of your zombie_apocalypse_supplies
# # and their supplies below. You should get rid of any duplicate items.
# # Find the built-in method that helps you accomplish this in the Ruby
# # documentation for Arrays.

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

total_supplies = zombie_apocalypse_supplies + other_survivor_supplies
p "Here's the new list with duplicates"
p total_supplies
p "Here is the new list without duplicates"
p total_supplies.uniq


# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# # 1. Iterate through extinct_animals hash, printing each key/value pair
# # with a dash in between the key and value, and an asterisk between each pair.
# # ----

extinct_animals.each do |x, y|
	puts "#{x} - #{y}"
	end	

# Added line below to test my block formatting skills
#extinct_animals.each {|x, y| puts "#{x} - #{y}"}

# # 2. Keep only animals in extinct_animals if they were extinct before
# # the year 2000. Do not use any special built-in methods.
# # ----

extinct_animals.each do |x, y|
	if y < 2000
		puts "#{x} - #{y}"
	else
		extinct_animals.delete(x)
	end
end	



# # 3. Our calculations were completely off, turns out all of those animals went
# # extinct 3 years before the date provided. Update the values in extinct_animals
# # so they accurately reflect what year the animal went extinct.
# # Do not use any special built-in methods.
# # ----

new_hash = {}
extinct_animals.each do |x,y|
	y = y - 3
	puts "#{x} - #{y}"
	new_hash = {x => y}
end
p extinct_animals
p new_hash

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

# hash.each do |x,y| 
# 	animal = "Dodo"
	
# 	if x == animal
# 		extinct = true
# 	else
# 		extinct = false
# 	end
# p extinct


# def extinction_check (hash)
# n = 0
# extinct = false
# until ( n > 4 ) || (extinct == true)
# hash.each do |x,y| 
# 	animal = "Dodo"
	
# 	if x == animal
# 		extinct = true
# 	else
# 		extinct = false
# 	end
# p extinct
# n += 1
# end
# end
# end
# p extinction_check(extinct_animals)

# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals.delete("Passenger Pigeon")
p extinct_animals