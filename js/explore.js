// Javascript version of .reverse
// Pseudocode: first loop the string for each letter using the counter code below
// Then print each letter and add the strings together

var reverse = ""

var str = "abcde"
for (var i = str.length; i > 0; i--) {
	console.log(str[i-1]);
	var reverse = reverse + str[(i-1)];
}

if (1==1) {console.log(reverse)};

