def ftoc(temperature)
    celsius=(temperature-32)*(5/9.to_f)
    return celsius.to_i
end

def ctof(temperature)
    fahrenheit=(temperature*(9/5.to_f))+32
    return fahrenheit
end