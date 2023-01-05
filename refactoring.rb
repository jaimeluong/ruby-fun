# If the code after the if or unless statement is short, you can place the if/while expression part after
puts "hello" if 1 < 2; # Printed because 1 is greater than 2
puts "hi" unless 1 < 2; # Never printed because 1 < 2 is always true

# Ternary condition expressions simplify an if/else statement
# First expression evaluates to true or false, the next two are executed for true and false respectively
puts 1 < 2 ? "my cat is vivi" : "my cat is not vivi";

# Case statements allow for multiple choices to an if/else statement
greeting = gets.chomp;
case greeting
    when "Hello" then puts "English";
    when "Hola" then puts "Spanish";
    else puts "different language";
end

# The conditional assignment operator ||= will assign something to a variable only if the variable hasn't had anything assigned to it yet

# Ruby’s methods will return the result of the last evaluated expression even if you don't explicitly return something
def add(a, b) # Will return a + b even if you don't explicitly ask it to return
    a + b;
end

# Ruby practices short-circuit evaluation

# upto and downto loop a code block if you know the range you want to loop over
95.upto(100) { |num| print num, " " } # Prints 95 96 97 98 99 100
"L".upto("P") { |letter| # Prints L M N O P
    puts letter;
}

# .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise
[1, 2, 3].respond_to?(:push); # Returns true because you can push to an array
[1, 2, 3].respond_to?(:to_sym) # Returns false because you can't convert an array to a symbol

# The concatenation operator << does the same thing as .push
[1, 2, 3] << 4;