
#Release 0

def status
	puts "Your status is"
	yield("incomplete", "complete")
end

status { |x, y| puts "Current status is #{x} and #{y}"}

def print_status 
	status1 = "Incomplete"
	status2 = "Complete"
#puts "Your status is:"
yield(status1, status2)

end
print_status { |status1, status2| puts "Your status is: #{status1} or #{status2}!"}


#Release 1
#Array
bikes_array = [ "Cannondale Jekyll", "Santa Cruz 5010", "Yeti sb5", "Ibis Mojo HD3" ]
bikes_hash = { "downhill" => "Santa Cruz v10", "Enduro" => "Yeti sb6", "xc" => "Cannondale Scalpel", "Cyclocross" => "Salsa Warbirt" }

p bikes_array.each
p bikes_hash.each

bikes_array.map! do |bike|
  bike.upcase
end

bikes_array.each do |bike|
  p "I want a new #{bike}!"
end

bikes_hash.each do |type, bike|
  p "I want a new #{type} bike. Maybe a #{bike}!"
end

bikes_hash.map do |type, bike|
  p "I want a new #{type.upcase} bike. Maybe a #{bike.upcase}!"
end



