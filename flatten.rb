def basic_flatten(array)
  flattened = []
  array.each do |e|
    if e.is_a?(Array)
      e.each do |e| 
        flattened << e
      end
    else 
       flattened << e
    end
  end
  flattened
end   

def recursive_flatten(array)
  flattened = []
  array.each_with_index do |e, i|
    if e.is_a?(Array)
      flattened.concat(recursive_flatten(array[i]))
    else 
      flattened << e  
    end 
  end 
  flattened
end

puts basic_flatten([1,2,[1, 2], 3, 6, [1, 2, 3], 5 ]).inspect

puts recursive_flatten([1,2, [1, [2,2,3, [2, 3, 4, [2, 3], 5], 3], 4], 3, 6, [1, 2, 3], 5 ]).inspect
