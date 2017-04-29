# Release 0
def array_searcher(array, integer)

  index = 0
  while index < array.length
    # find integer in array
    # retun index of integer (find_index?)
    if array[index] == integer
      p index 
    # else
      # p nil
    end
    index += 1
    
  end

end

# Release 1

def fib(num)
    
  fib_array = [0, 1]
  
  counter = num - 2
  while counter > 0 
    #add two numbers, output to array
    fib_array.push(fib_array[-1] + fib_array[-2])
  counter = counter - 1
  end
  p
end

# Release 2

# PSEUDOCODE FOR BUBBLE SORT ALGORITHM METHOD

# Take a set of numbers
# 1. Find the number in first position (A) and the number in the second position (B) of that set
# 2. Check to see if number in first position (A) is greater than the number in the second position (B)
# 3. If the first number in the first position is greater than the number in the second position, switch the position of the two numbers so that the order is now B, A
# 4. If A is not greater than B, put A is a new set of numbers, 
# 5. move on to evaluate the number in the second (B) and third position (C)
# 6. Continue through the entire set of numbers
# Keep going through steps 1-6 until no more number positions change.

def bubble_sorter(array)
  
  array_length = array.length

  ready_to_stop = false 
  until ready_to_stop

    if array != array.sort
      
      index = 0
      while index <= array_length - 2
      p array
    
        if array[index].to_i > array[(index + 1)].to_i
          #puts "Comparing #{array[index].to_i} to #{array[(index + 1)].to_i}"
          
          original_first = (array[index].to_i)
          original_second = (array[index + 1].to_i)
    
          array[index] = original_second
          array[index + 1] = original_first
        else
          #puts "Comparing #{array[index].to_i} to #{array[(index + 1)].to_i}"
    
        end
        index += 1
        
      end
      #puts "One pass through"
    ready_to_stop = false
  else
    ready_to_stop = true
  end
end
  array 
end

