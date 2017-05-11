// Declare 2 new arrays

var colors = ["blue", "red", "fuchsia", "coral"];
var names = ["Ed", "Seabiscuit", "American Pharoah", "Steve"];

function add_color(color) {
	colors.push(color);
}

function add_name(name) {
	names.push(name);
}


// Driver Code
add_color("black")
add_name("Jack")

console.log(colors)
console.log(names)