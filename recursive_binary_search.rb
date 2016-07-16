def binary_search(my_list, num)
  mid = (my_list.length-1) / 2
  unless num == my_list[mid]  
    return nil if my_list.length <= 2
    return binary_search((my_list.slice(mid..-1)), num) if my_list[mid] < num
    return binary_search((my_list.slice(0..mid)), num) if my_list[mid] > num
  end 
  my_list[mid]
end       

my_list = (1..10000).to_a
puts binary_search(my_list, 4600) == 4600
puts binary_search(my_list, 3) == 3
puts binary_search(my_list, -1) == nil
puts binary_search(my_list, 10001) == nil




# def binary_search(list, item)
#   low = 0
#   high = list.length - 1 
#   while low <= high do
#     mid = (low + high) / 2 
#     guess = list[mid]  
#     if guess == item  
#       return guess 
#     elsif guess > item   
#       high = mid - 1  
#     else
#       low = mid + 1
#     end 
#   end 
#   nil
# end