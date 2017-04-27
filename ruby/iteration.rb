
#Release 0

def status
	puts "Your status is"
	yield("incomplete", "complete")
end

status { |x, y| puts "Current status is #{x} and #{y}"}

def print_status 
	status1 = "Incomplete"
	status2 = "Complete"
yield(status1, status2)

end
print_status { |status1, status2| puts "Your status is: #{status1} or #{status2}!"}


#Release 1
#Array
bikes_array = [ "Cannondale Jekyll", "Santa Cruz 5010", "Yeti sb5", "Ibis Mojo HD3" ]
#Hash
bikes_hash = { "downhill" => "Santa Cruz v10", "Enduro" => "Yeti sb6", "xc" => "Cannondale Scalpel", "Cyclocross" => "Salsa Warbirt" }

p bikes_array.each
p bikes_hash.each

#Make the array uppercase
bikes_array.map! do |bike|
  bike.upcase
end

bikes_array.each do |bike|
  p "I want a new #{bike}!"
end

#Uses .each to print an unmodified hash in a sentence.
bikes_hash.each do |type, bike|
  p "I want a new #{type} bike. Maybe a #{bike}!"
end

#Uses .map to print a modified (uppercase) hash without permanent changes.
bikes_hash.map do |type, bike|
  p "I want a new #{type.upcase} bike. Maybe a #{bike.upcase}!"
end

#Release 2
random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#1 A method that iterates through the items, deleting any numbers that are less than 5.
puts "delete if"
p random_array.delete_if {|num| num < 5 }
p random_hash.delete_if {|num| num < 5 }

random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#2 A method that keeps any number less than five
puts "keep if"
p random_array.keep_if {|num| num < 5 }
p random_hash.keep_if {|num| num < 5 }

random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#3 A method that filter out even numbers
puts "select if even"
p random_array.select {|num| num.even? }
p random_hash.select {|num| num.even? }

random_array = [1, 2, 3, 7, 8, 9]
random_hash = { 1 => "one", 5 => "five", 6 => "six", 9 => "nine"}

#4 A method that will remove items from a data structure until the condition in the block evaluates to false:
puts "select if even (with bash)"
p random_array.select! {|num| num.even? }
p random_hash.select! {|num| num.even? }




