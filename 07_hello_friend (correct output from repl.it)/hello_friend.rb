class Friend
  def greeting(person = nil)
    if person
      "Hello, #{person}!"
    else
      "Hello!"
    end
  end
end