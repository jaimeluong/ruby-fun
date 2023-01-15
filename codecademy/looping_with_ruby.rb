# The while loop executes a block of code while a certain condition is true
# Unless there's no reachable breaking point, the while loop will continue forever!
count = 0;
while count < 5 # This prints 0,1,2,3,4 to the console
    puts count;
    count = count + 1;
end

# The until loop is a complement to the while loop that executes a block of code until the condition is true
counter = 0;
until counter > 5 # This prints 0,1,2,3,4,5; 5 is included because counter reaches that value and THEN the code stops
    puts counter;
    counter = counter + 1;
end

# Ruby doesn't have increment/decrement operators like ++ and --, so you have to use the built-in assignment operators
# These include +=, -=, *=, /=
# This provides a succinct way of updating variable values in our programs
countie = 6;
countie += 1;
puts countie; # countie is now 7

# The for loop looks like this, and has a meaning of "For the variable num in the range 1 to 10, do the following"
# Using 3 dots (...) is exclusive and using 2 dots (..) is inclusive, meaning it includes the highest number in the range
for num in 1...10 # This prints 1,2,3,4,5,6,7,8,9 because it's exclusive
    puts num;
end

# You can also repeat actions in Ruby using iterators, which is just a Ruby method that repeatedly invokes a block of code
# The simplest iterator is the loop method
# loop { print "Hello, world!" } # This will indefinitely print "Hello, world!"
# Curly braces {} are generally interchangeable with the keywords do (to open the block) and end (to close the block)
i = 0;
loop do # This will print 1,2,3,4,5,6 because the break condition happens after i has already reached 6
  i += 1;
  print "#{i}";
  break if i > 5;
end
# The break keyword will break a loop as soon as its condition is met

# The next keyword can skip over an interation of a loop
for i in 1..5 # For 1,2,3,4,5
    next if i % 2 == 0; # If i is divisible by 2 (if it's even), skip
    print i; # Only prints 1,3,5
end

# Arrays in Ruby contain a list of multiple values in one variable
my_array = [1,2,3,4,5];

# The .each method applies an expression to each element of an object
my_array.each { |item| # Brackets are interchangeable with do/end
    puts item + 5; # Prints 6,7,8,9,10
}

# The .times method executes a code block or performs a task on each item in an object a specified number of times
5.times {
    print "hi!"; # Prints hi!hi!hi!hi!hi!
}

# This program redacts certain words by looping through an array of strings
# Ruby's built-in .split method takes in a string and returns an array, split by a given delimiter
puts "Text to search through: " # Gets phrase to apply redacting to
text = gets.chomp
puts "Word to redact: " # Gets word to redact
redact = gets.chomp

words = text.split(" ") # Creates an array from the given text

words.each do |word| # For each item in the array, if the word is not the redacted word, print it like normal; otherwise, print REDACTED
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end