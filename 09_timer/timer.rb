class Timer
  attr_accessor :seconds
  
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time
    secs = @seconds%60
    mins = @seconds/60 %60
    hrs = @seconds/3600
    
    "%02d" % hrs + ":" +"%02d" % mins + ":" + "%02d" % secs
  end
end