# Your code goes here!

require 'pry'

class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)

        split_word = @word.chars
        sorted_letters= split_word.sort
        
        
        matches = array.filter do |word|
            split_array = word.chars
            sorted_word= split_array.sort
            sorted_letters == sorted_word

            
        end
        # binding.pry
        matches
        
    end
    
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])