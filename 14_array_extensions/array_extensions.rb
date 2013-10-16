class Array
  def sum
    result = 0 #initialize value
    self.each do |num| 
      result = result + num #return initial value plus num
    end
    result
  end

  def square
    map{|n| n*n} #return the square of each array element in a new array
  end

  def square!
    map!{|n| n*n} #return original array with each element squared
  end
end