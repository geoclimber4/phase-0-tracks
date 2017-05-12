// Javascript version of .reverse
// Pseudocode: first loop the string for each letter using the counter code below
// Then print each letter and add the strings together



function reverse(str) {
	var reverse = ""
	for (var i = str.length; i > 0; i--) {
// commented out individual printout on each line to match .reverse from ruby
	// console.log(str[i-1]);
	var reverse = reverse + str[(i-1)];
	}
	return reverse
}

console.log(reverse('abcde'));

if (1==1) {console.log('apple')};

