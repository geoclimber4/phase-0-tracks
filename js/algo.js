// Release 0

// First enter array of strings:
var bikes = ["Motobecane Ti", "Cannondale Jekyll", "tricycle"];

// Then search through array for longest string. Take in the array.
function Longest_string(array){
// Variables created to compare indexes
  var x, y, limit;
// while to loop for the length of the limit. .length used to convert each value to length 
  limit = array.length; while(limit--) { 
    for(x = 0, y = 1; x < limit; ++x, ++y)
      if(array[x].length < array[y].length) { temp = array[x]; array[x] = array[y];}
  }     
   return array[0]
}
 
// Release 1
// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. 

function valueShare(objectOne, objectTwo) {
// compare each key value pair. If they match result true
  if(objectOne.name == objectTwo.name)
    {return true;}
  else {
    return false;
  }
}

// Release 2, random word array generator
var array = [];
function randomArray(num) {
  limit = num; 
  for (var i = 0; i < limit; i++) {
    array.push(Math.round(Math.random()*10) * "c")
  }
  console.log(array)
}

// Driver Code
// Release 0 Driver Code
console.log(Longest_string(bikes));
var cars = ["Honda", "Toyota Land Cruiser", "Subaru", "Fiat"];
console.log(Longest_string(cars));

// Release 1 Driver Code
var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};

var pet1 = {animal: "Dog", legs: 4};
var pet2 = {animal: "Dog", legs: 3};
console.log(valueShare(person1, person2));
console.log(valueShare(pet1, pet2));


// Driver code release 2
console.log(randomArray(10))


