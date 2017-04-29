#Array created for output of spy names:
code_names = []

#loop created for input of multiple names
user_input = "no"
until user_input == "quit"

#Release 0
#Take spy_name and create fake name
#swap first and last name
puts "What is the spy's name?"
spy_name = gets.chomp
spy_array = spy_name.split(' ')
spy_array.rotate!
spy_name_new = spy_array*" "

#Release 0 Part 2
#Change all of the vowels (a,e,i,o,u) to the next vowel
#Change all of the consonants to the next consonant

def next_vowel(str)

# vowel string with extra a to handle loop cases for u
vowel = "aeioua"
#no_vowel string with extra b to handle loop cases for z
no_vowel = "bcdfghjklmnpqrstvwxyzb"
index = 0
  while index < str.length
#if statement to alternate handle flow from vowels, consonants, and spaces
    if str[index].include?("a") || str[index].include?("e") || str[index].include?("i") || str[index].include?("o") || str[index].include?("u")
      str[index] = vowel[(vowel.index(str[index])+1)]
#This line added to handle space character in names
    elsif str[index] == " "
      str[index] == " "
    else
      str[index] = no_vowel[(no_vowel.index(str[index])+1)]
    end
  index += 1
  end
  p str
end

#variable x added to avoid running method twice to input into array
x = next_vowel(spy_name_new)
p "#{spy_name} is also known as #{x}"

code_names.push(x)

#option to exit
p "type quit if done. Otherwise hit enter to keep going"
user_input = gets.chomp

end
#prints array names
p code_names

