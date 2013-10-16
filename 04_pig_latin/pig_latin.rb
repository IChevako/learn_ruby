def translate(s)
  s.split.map do |word| #split input into array elements
    v = first_vowel(word) #variable 'v' equals a new function that returns the index number for which to start the slice in the next step
    word.slice(v..-1) + word[0,v] + "ay" #splits the words into 2 parts by the index number of the value returned by first_vowel, and inverts them, plus "ay"
  end.join(" ") #rejoins array values into single string
end

def first_vowel(word) 
  if word =~ /^qu/ #if word begins with 'qu', return index 2
    2
elsif word=~/^squ/ #since the only consonant that can precede 'qu' at the beginning of a word is 's', return index of 3 if word begins with 'squ'
    3
  else
    word.gsub(/[aeiou].*$/, '').length #if word begins with anything but 'qu' or 'squ', return the length of the word after removing all characters before the first vowel
  end
end