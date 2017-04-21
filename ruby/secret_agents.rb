#define method: use the .next on the indext of each letter
def encrypt(x)
  x[0].next!+ x[1].next!+  x[2].next!
end

#prints result of each letter using the above method
puts encrypt("abc")
puts encrypt("zed")

#prints
def decrypt(x)
	"abcdefghijklmnopqrstuvwxyz"[("abcdefghijklmnopqrstuvwxyz".index("z")-1)]


end

puts decrypt("bcd")
puts decrypt("afe")