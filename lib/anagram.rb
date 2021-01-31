# Your code goes here!
class Anagram
    attr_accessor :word
    
    def initialize(word)
        @word = word
    end

    def match(words) # ["tap", "hat","tac"]
        # ["tap", "hat","tac"]
        array = []

        words.each do |w|       
            str1 = word
            str2 = w

            if str1.length == str2.length
                str1_split = str1.split("") # => ["c", "a", "t"]
                str2_split = str2.split("")

                str1_sorted = str1_split.sort
                str2_sorted = str2_split.sort

                if str1_sorted == str2_sorted
                    array.push(w)
                else
                    # do nothing
                end
            end
        end
        return array
    end

end

new_instance = Anagram.new("cat")
new_instance.match(["tap", "hat","tac"]) # => ["tac"]


    