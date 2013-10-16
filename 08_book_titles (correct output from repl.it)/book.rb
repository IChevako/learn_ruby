class Book
    def title(string) #class method with string as input
    new_title = [] #empty array to store words from string
    weird = %w(the to an a and of in) #exception words that don't get capitalized
    words=string.split.each do |x| #split string into individual words
        if weird.include?(x) #check if value matches exception word
            new_title << x #if yes, send to empty array without capitalizing
        else new_title << x.capitalize #if no, send and capitalize
        end
    end
    new_title[0].capitalize! #capitalize first element in array regardless of conditionals
    return new_title.join(" ") #join elements in the new array to form a new string
end
end