def substring(word_a, word_b)
    cell = {-1 => 0}
    word_a.split('').each_with_index do |l, i|
        if l == word_b[i] 
            cell[i] = cell[i-1] + 1
        else 
            cell[i] = 0
        end
    end
    cell[cell.keys.last]
end

puts substring("fish", "hish") == 3