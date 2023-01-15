class Calculator
    def add(a, b)
        a + b
    end

    def multiply(a, b)
        a * b
    end

    def self.speak # Or Calculator.speak
        return "This is a class method"
    end
end

calc = Calculator.new()
puts calc.add(1, 2) # Prints 3
puts Calculator.speak # Prints "This is a class method"