def selection_sort(arr)
  sorted = []
  until arr.length == 0
    sorted << arr.delete_at(find_smallest(arr)) 
  end
  sorted
end

def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0
  arr.each_with_index do |num, index|
    if num < smallest
      smallest = num
      smallest_index = index
    end
  end
  smallest_index
end 


arr_dup = [1, 2, 2, 2, 3, 4, 5].shuffle
arr_sorted = (1..10).to_a
arr_random = (1..10).to_a.shuffle
 
puts selection_sort(arr_dup).inspect
puts selection_sort(arr_sorted).inspect
puts selection_sort(arr_random).inspect

 
