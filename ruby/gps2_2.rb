# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # turn the list into an array
  # convert each item in the array into a keyword for a hash
  # set default quantity (value) (1)
  # print the list to the console [can you use one of your other methods here?]
# output: a hash with all the items as keywords, and values of 1

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:Define method with two variables.
# converted the variables into the keyword and value
# output: a hash containing the new keyword and value

# Method to remove an item from the list
# input: keyword
# steps: run the method to delete the keyword
# output: updated hash without the keyword and value

# Method to update the quantity of an item
# input:keyword and quantity to be updated
# steps:run the method to erase the value and replace with the new value
# output: updated hash with new value

# Method to print a list and make it look pretty
# input:list
# steps:convert the keyword and values to strings and then print each of them
# output:a printed list

# Method creates list and adds items from a string
def listCreate(string)
  groceryList = {}
  listArray = string.split" "
  listArray.each do |item|
      groceryList[item] = 1 
  end
  return groceryList    
end


# Method takes an item and item quantity and adds to the existing hash
def itemAdd(hash, grocery, groceryNum = 1)
  hash[grocery] = groceryNum
  return hash
end


def itemDelete(hash, grocery)
  if hash.include?(grocery)
  hash.delete(grocery)
  else
  puts "I'm sorry, item does not seem to be on your list"
end
  return hash
end


# if/else code, if item exists then replace it with new value; if not output error message
def itemUpdate (hash, grocery, groceryNum)
  if hash.include?(grocery)
    hash[grocery] = groceryNum
  else
    puts "item not on list"
  return hash
  end
end



#prints list in a readable, user friendly style. Go through the hash and print out each keyword and value
def listPrint(hash)
hash.each do |x, y|
  puts "Item: #{x}. Quantity: #{y}."
  end
end



#Release 1 Driver Code


#myList = listCreate("carrots apples cereal pizza")
#puts itemDelete(myList, "grapes")
#puts itemUpdate(myList, "pizza", 2)
#puts itemDelete(myList, "grapes")
#listPrint(myList)



#Release 2 Driver Code
puts newList = listCreate("Lemonade Tomatoes Onions")
puts itemUpdate(newList, "Tomatoes", 3)
puts itemAdd(newList, "Ice Cream", 4)
puts itemUpdate(newList, "Lemonade", 2)
puts itemDelete(newList, "Lemonade")
puts itemUpdate(newList, "Ice Cream", 1)
listPrint(newList)
  
  
  
