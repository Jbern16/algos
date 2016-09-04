def highest_product(int_arr)  
  dup_arr = int_arr.dup.map(&:abs)
  first_highest  = dup_arr.delete_at(dup_arr.index(dup_arr.max))
  second_highest = dup_arr.delete_at(dup_arr.index(dup_arr.max))
  third_highest  = dup_arr.delete_at(dup_arr.index(dup_arr.max))

  first_highest * second_highest * third_highest
end 


puts highest_product([-10, -10, 1, 3, 2])