class Temperature

  def self.from_celsius (degrees_celsius) #class method creating celsius key value
    new(:c => degrees_celsius)
  end

  def self.from_fahrenheit (degrees_fahrenheit) #class method creating fahrenheit key value
    new(:f => degrees_fahrenheit)
  end




  def initialize (options) #initialize value of degrees_fahrenheit by converting celsius input to fahrenheit or returning fahrenheit input
    @degrees_fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32 
  end




  def in_fahrenheit #returns degrees_fahrenheit initialized value
    @degrees_fahrenheit
  end




  def in_celsius #returns reverse  degrees_fahrenheit value aka celsius value
    (@degrees_fahrenheit - 32) * (5.0/9.0)
  end

end

class Celsius < Temperature #new Celsius class that inherits Temperature
  def initialize(degrees_celsius) 
     super(:c => degrees_celsius)
  end
end

class Fahrenheit < Temperature #new Fahnrenheit class that inherits Temperature
  
  def initialize(degrees_fahrenheit)
    super(:f => degrees_fahrenheit)
  end
end


#Example walk-through
#Temperature.new.in_celsius(:c => 0);
#based on class method, we know that :c indicates from_celsius; 
#initializes & converts to fahrenheit (32); sets value of degrees_fahrenheit
#calls in_celsius which returns degrees_fahrenheit, and converts it back to celsius (0)