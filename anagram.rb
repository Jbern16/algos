class Anagram 
  
  def initialize 
    @dictionary = read_dictionary
  end
   
  def find_anagrams(word)
    @store = create_store     
    @store[sort_word(word)]
  end 

  private
    
    def create_store 
      @store ||= @dictionary.each_with_object(Hash.new([])) do |word, collection|
        collection[sort_word(word)] += [word]
      end 
    end 
    
    def sort_word(word)
      word.chars.sort.join
    end 

    def read_dictionary
      File.read("/usr/share/dict/words").split(" ")
    end 
end 

anagram = Anagram.new
puts anagram.find_anagrams("integral").inspect
puts anagram.find_anagrams("parse").inspect
puts anagram.find_anagrams("skate").inspect
puts anagram.find_anagrams("spot").inspect

