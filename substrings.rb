def substrings(string, dictionary)
    @result = { }
    input = string.split(" ")
    dictionary.each do |word|
        input.each do |str|
            compare(str, word)
        end
    end
    puts @result
end

def compare(str, word)
    if str.downcase.include? word
        if @result.include? word
            @result[word] += 1  
        else 
            @result[word] = 1
        end
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)