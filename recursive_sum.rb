def sum(arr)
  arr.empty? ? 0 : arr.shift + sum(arr) 
end

puts sum([1, 2, 3, 4]) == 10