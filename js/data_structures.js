// // Declare 2 new arrays

// var colors = ["blue", "red", "fuchsia", "coral"];
// var names = ["Ed", "Seabiscuit", "American Pharoah", "Steve"];

// function add_color(color) {
// 	colors.push(color);
// }

// function add_name(name) {
// 	names.push(name);
// }

// var horses = {};

// for (var i = names.length - 1; i >= 0; i--) {
// 	// horses.push {names[i]: colors[i];
// 		horses[names[i]] = colors[i];
// }


// // var horses = {'names[0]': colors[0], 'Sea': colors[1]};
// // below code for testing only
// // var horses = {name: names[0], color: colors[0]}
// console.log(horses)

// // Driver Code
// add_color("black")
// add_name("Jack")

// console.log(colors)
// console.log(names)


// Constructor function for car (release 2)


function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;
	this.car_fast = function() { console.log("vrooooom!"); };
};

var newCar = new Car("Mazda", "Miata", "red");
console.log(newCar);
newCar.car_fast();

