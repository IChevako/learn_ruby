def echo(s)
  return s #return exact input
end

def shout(s)
  return s.upcase #return input in all caps
end

def repeat(s, times=2) #initialize value for times
  return ([s] * times).join(" ") #return string input multiplied by second variable value
end

def start_of_word(s, n)
  return s[0...n] #return first n character indexes of input
end

def first_word(s)
  return s.split(" ").first #split input by spaces, and return first word
end

def titleize(s)
  words = s.split.map do |x| #split string into array elements
      if %w(to and for the over).include?(x) #if array containing "small" words includes an array element, return the element unchanged
          x
          else
              x.capitalize #if the element is not in the "small words" array, capitalize it
          end
      end
words.first.capitalize! #capitalize the first letter in the string, independant of above if statement
words.join(" ") #rejoin array elements in sentence string
  end