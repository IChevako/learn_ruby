def add (x,y)
    return x+y
end

def subtract (x,y)
	return x-y
end

def sum (array)
	return array.inject(0){|x,y| x+y} #for all values in array, add value to next value
end

def multiply(x,y)
	return x*y
end

def power(x,y)
	return x**y
   end
    
def factorial(x)
    return (1..x).inject{|a,b| a*=b} #for all values from 1 to max of argument x, multiply value by the next value
end