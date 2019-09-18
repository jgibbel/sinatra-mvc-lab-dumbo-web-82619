class PigLatinizer
    def latinize(string)
    words = string.split(" ")
    @return_string = ""
    words.each do |word|
        letters_array = word.split('')
        if letters_array.first == "a"
            @latin = ""
            letters_array.each do |letter|
                @latin << letter 
            end 
            @latin << "way "
            @return_string << @latin 
        else 
            @latin = ''
            first = letters_array.shift 
            letters_array.each do |letter|
                @latin << letter 
            end 
            @latin << first 
            @latin << "ay "
            @return_string << @latin 
        end 
    end
        @return_string
    end     
end 

