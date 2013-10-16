class RPNCalculator

def self.calculator(input)
    stack=[]
    input=input.split("")
    input.each do |x|
        case x
        when /\d/
        stack << x.to_f
        when "-", "/", "*", "+", "**"
        op = stack.pop(2)
        stack << (op[0].send(x,op[1]))
    end
    puts stack
end
end

end