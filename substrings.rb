def substrings string, dictionary
    result = {}
    dictionary.each do |word|
        if word.include? string
            if result.include? word.to_s
                result[:word] += 1
            else 
                result[:word] = 1
            end
        end
    end

end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)