def reverser
  yield.split(' ').map(&:reverse).join(' ') #take the block argument, split by a space into seperate values, reverse those values, then re-join to form new string
end

def adder num = 1
  yield + num #add 1 to block argument
end

def repeater num = 1
  num.times do #do block argument 'n' number of times
    yield
  end
end