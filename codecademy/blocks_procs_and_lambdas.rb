# A block is like a nameless method
# Blocks are combined with methods like .each and .times to execute an instruction for each element in a collection (like a hash or array)
# The collect method takes a block and applies the expression in the block to every element in an array, then returns a copy of the array with the modifications
# Use .collect! to mutate the original array
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55];
doubled_fibs = fibs.collect { |num|
    num*2;
}
puts doubled_fibs; # Prints the fibs array but every item is doubled

# Some methods accept blocks while others don't, because methods that accept blocks have a way of transferring control from the calling method to the block and back again
# You can build this into any methods you define with the yield keyword
def block_test
    puts "We're in the method!";
    puts "Yielding to the block...";
    yield;
    puts "We're back in the method!";
end
block_test { puts "We're in the block!" }

# You can pass parameters to yield to have a finer control of the program
def yield_name(name)
    puts "In the method! Let's yield.";
    yield("Vivi");
    puts "In between the yields!";
    yield(name);
    puts "Block complete! Back in the method.";
end
yield_name("Jaime") { |name| puts "My name is #{name}!"}; # Output would have Vivi passed first, then Jaime

# Use procs to save blocks, and pass in the proc to a method that would otherwise take a block by using & to convert it to a block
# Call Proc.new and pass in the block you want to save
cube = Proc.new { |x| x ** 3 }

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |num|
    num.floor
}
ints = floats.collect(&round_down) # .collect and .map do the same thing
puts ints

# Procs have advantages over blocks; they are full-fledged objects so they have all the powers and abilities of objects. They can also be called over and over without having to rewrite the block.
def greeter
    yield
end
phrase = Proc.new {
    puts "Hello!"
}
greeter(&phrase) # Prints "Hello!" because control was yielded to the proc/block

# You can call procs directly using Ruby's .call method
hi = Proc.new { puts "hi!" }
hi.call # Prints "hi!"

# You can pass a Ruby method name around with a symbol and convert symbols to procs using the &
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s) # .map is a method that takes a block. :to_s is a symbol that references the #to_s method, and the & converts the symbol to a block to be used in the map method.
puts strings_array # Prints array as strings

# Lambdas are identical to procs except lambdas check the number of arguments passed to it while a proc doesn't.
# Lambdas will throw an error if you pass it the wrong number of arguments, while a proc will ignore any unexpected arguments and assign nil to any missing.
# Lambdas also pass control back to the calling method when it returns, while a proc returns immediately without going back to the calling method.

# They're useful in the same situations where you would use a proc
my_lambda = lambda { |param| block }

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda { |item|
    item.is_a? Symbol
}
symbols = my_array.select(&symbol_filter)
puts symbols # Prints only the symbols from the array

# If you check a hash, your params should include a |key, value| instead of just |item|