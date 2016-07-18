def quicksort(arr)
  if arr.length < 2 
    return arr
  else
    pivot = arr[0]
    less = arr.select { |e| e < pivot }
    greater = arr.select { |e| e > pivot }
   end 
    quicksort(less) + [pivot] + quicksort(greater) 
end 

arr = [10, 5, 2, 3]
arr2 = (0..1000).to_a.shuffle
arr3 = (0..1000).to_a.reverse

puts quicksort(arr) == arr.sort
puts quicksort(arr2) == arr2.sort
puts quicksort(arr3) == arr3.sort
