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
 
console.log(Longest_string(bikes));
var cars = ["Honda", "Toyota Land Cruiser", "Subaru", "Fiat"];
console.log(Longest_string(cars));


