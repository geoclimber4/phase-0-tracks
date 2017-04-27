#Apartment Building Nested Data Structure
building = {
	garfield_1: {
		build_address: '2304 W. 55th',
		num_units: 6,
		boiler: true
	},
	garfield_2: {
		build_address: '2310 W. 55th',
		num_units: 6,
		boiler: true
	},
	garfield_3: {
		build_address: '2320 W. 55th',
		num_units: 18,
		boiler: true
	},
	garfied_4: {
		build_address: '1934 W. 55th',
		num_units: 17,
		boiler: false
	}
}

puts "The property at 2304 W. 55th has a boiler"
p building[:garfield_1][:boiler]
puts "The property at 2320 W. 55th has #{building[:garfield_3][:num_units]} units"


