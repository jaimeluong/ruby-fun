# Ruby's if statement takes in an expression, which either evalutes to true or false
# Add an else to execute code if the if statement returns false
# Use elsif for more than two options
# End an if/elsif/else statement with end

if 1 < 2
    puts 'hello';
elsif
    puts 'world';
else
    puts '!';
end

# Ruby's unless statement checks if something is false and will execute code if so
hungry = false;
unless hungry
  puts "I'm writing Ruby programs!";
else
  puts "Time to eat!";
end
# Another example of unless statement in action
problem = false
print "Good to go!" unless problem

# == and != are the comparator (or relational) operators which evaluate to true or false
# Only the last two print because they evaluate to true
if 2 == 3
    puts 'print 1';
end # false
if 2 == 2
    puts 'print 2';
end # true
if 2 != 3
    puts 'print 3';
end # true

# Ruby also has the less than, greater than, less than or equal to, and greater than or equal to operators which evaluate to true or false

# Ruby also has logical/boolean operators which evaluate to true or false
# and &&, or ||, not !

# Expressions in parentheses are always evaluated before anything outside parentheses, so use parentheses to write out complicated logic

# Ruby's .include? method evaluates to true if it finds what it's looking for and false otherwise
# As a general rule, Ruby methods that end with ? evaluate to the boolean values true or false
if string_to_check.include? "substring" # The expression after the if evaluates to true or false and executes code accordingly
    puts "print";
end

# Ruby's .gsub! method replaces instances of certain characters with other characters
# The ! modifies the original string
string_to_change.gsub!(/s/, "th")