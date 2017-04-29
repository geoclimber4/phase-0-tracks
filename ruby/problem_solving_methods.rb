def array_searcher(array, integer)

  index = 0
  while index < array.length
    # find integer in array
    # retun index of integer (find_index?)
    if array[index] == integer
      p index 
    else
#   p nil
    end
    index += 1
    
  end

end

test_array = [1, 2, 3, 4, 5]
array_searcher(test_array, 5)

def fib(num)
    
  fib_array = [0, 1]
  
  counter = num - 2
  while counter > 0 
    #add two numbers, output to array
    fib_array.push(fib_array[-1] + fib_array[-2])
  counter = counter - 1
  end
  #only prints the last value to verify accuracy
  p fib_array[-1]
end
p fib(6)
p fib(100)

#Bubble Sort: Starting from the begining, compare adjacent values and move higher to right

test_array = [ 5, 14, 1, 2, 3, 19, 11, 6, 17]

def bubble_sorter(array)
  
  array_length = array.length
  counter = 0
  
  while counter < array_length
    if array != array.sort
      puts "Code at index #{counter}"
      
      index = 0
      while index <= array_length - 2
      puts "Code at index #{index}"
      p array
    
        if array[index].to_i > array[(index + 1)].to_i
          puts "Comparing #{array[index].to_i} to #{array[(index + 1)].to_i}"
          
          original_first = (array[index].to_i)
          original_second = (array[index + 1].to_i)
    
          array[index] = original_second
          array[index + 1] = original_first
        else
          puts "Comparing #{array[index].to_i} to #{array[(index + 1)].to_i}"
    
        end
        index += 1
        
      end
    counter +=1
  else
    counter = array_length
  end
end
  array 
end

p bubble_sorter(test_array)





