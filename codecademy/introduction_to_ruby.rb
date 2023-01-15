# This is a number
my_num = 25;

# This is a boolean, spelling must be lowercase
my_boolean = true;
my_other_boolean = false;

# This is a string
my_string = "Hello, world";

# puts displays objects to the console
puts my_num;
puts my_boolean;
puts my_other_boolean;
puts my_string;

# Ruby supports the 4 usual mathematical operators (+ - * /) and exponentiation (**) and modulo (%)
puts 2**3; # Returns 8
puts 25%6; # Returns 1

# Ruby allows printing to the console using puts or print
print "Simply prints to console without adding a new line";
puts 'Supports single quotes too and adds a new line automatically';

# Since everything in Ruby in an object, everything has built-in methods
my_name = "Jaime";
puts my_name.length; # Returns 5
puts my_name.reverse; # Returns emiaJ
puts my_name.upcase; # Returns JAIME
puts my_name.downcase; # Returns jaime
puts my_name.capitalize; # Returns Jaime

=begin
Everything in between these two tags creates a multi-line comment
=end

# Ruby's convention is to use snake_case over camelCase for local variables

# Ruby allows for chaining methods together
my_name_also = "Jaime";
puts my_name_also.downcase.reverse.upcase; # Returns EMIAJ

# gets is the Ruby method that gets input from a user
# Because Ruby automatically adds a new line after every input, it's chained together with chomp to remove that extra line
print "What is your name? ";
your_input = gets.chomp;

# String interpolation in Ruby is accomplished by using #{variable_name} in a string
puts "Your name is #{your_input}"; # Returns whatever you asked it to be

# Putting a ! after using a method on a variable modifies the value contained within the variable itself
# Compare my_name.upcase with my_name.upcase!
# The first just shows it as upcase'd while the second actually modifies it