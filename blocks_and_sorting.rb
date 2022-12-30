# Methods in Ruby are reusable sections of code written to perform a specific task in a program
# They're made of 3 parts: the header (def keyword + name of method + arguments), the body (the code block that describes the procedures the method carries out), and the end keyword
def welcome
    puts "Hello!";
end

# Call a method by just writing it, which makes the program look for the method with that name and execute it
welcome; # Prints "Hello!"

# Parametes are what's in parentheses when you define a method while arguments are the actual data you supply when you call a method
def cube(n)
    puts "The cube of #{n} is #{n ** 3}";
end

cube(2); # Prints "The cube of 2 is 8"

# Splat arguments are arguments preceded by a *, which tells the program that the method can receive one or more arguments
def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor");

# Use return keyword to send back a value
def doubler(n)
    return n*2;
end
puts doubler(2); # Prints 4

# Blocks are a way of creating methods that don't have a name, they're similar to anonymous functions in JavaScript
# Defined with either do...end keywords or curly braces {}
# Here's a method and a block that do the same thing except only the method can be called again and again
def capitalize(string) # Method that capitalizes a word
    puts "#{string[0].upcase}#{string[1..-1]}";
end

["ryan", "jane"].each { # Block that capitalizes each string in a given array
    |string| puts "#{string[0].upcase}#{string[1..-1]}";
}

# A method can take a block as a parameter, which abstracts certain tasks from the method and defining those tasks when you call the method
array = [1,2,3];
array.each { |i| # You are passing a block (everything in the curly brackets) to the .each method
    puts i;
}

# Ruby's built-in sorting library implements some sorting algorithms
# Most sorting algorithms assume we are sorting an array of items, which involves comparing any two items in the array and deciding which should come first

# The combined comparison operator returns -1, 0, or 1 depending on the operands to the left and right
# 0 if they're equal, 1 if the right is first, and -1 if the right is second
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
puts (book_1 <=> book_2) # Prints 1, because "A Brief" is before "A Wrinkle"

# Ruby's sort method assumes by default you want to sort in ascending order but it accepts a block as an optional parameter that allows you to specify how you want two items to be compared
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"];

books.sort! { |firstBook, secondBook| firstBook <=> secondBook }; # Sorts books in ascending order
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }; # Sorts books in descending order

# This code also works, it uses if/elsif/else/end
books.sort { |first, second| 
    if first < second # first book before second alphabetically
        -1
    elsif first > second # first after second
        1
    else # first and second are the same
        0
    end
}

# You can add default parameters in methods like so
def alphabetize(arr, rev=false) # rev will default to false if a second argument isn't supplied when you call this method
end