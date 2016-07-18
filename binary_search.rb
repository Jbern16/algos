def binary_search(list, item)
  low = 0
  high = list.length - 1 
  while low <= high do
    mid = (low + high) / 2 
    guess = list[mid]  
    if guess == item  
      return guess 
    elsif guess > item   
      high = mid - 1  
    else
      low = mid + 1
    end 
  end 
  nil
end



my_list = (1..50).to_a

puts binary_search(my_list, 40) #=> 1
puts binary_search(my_list, -1) #=> None
