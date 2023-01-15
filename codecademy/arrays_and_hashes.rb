# Arrays of arrays are called multidimensional arrays
# Can store any combination of objects
two_dimensional_array = [
    [true, false],
    [1, 3],
    ['hello', 'world']
];

# Hashes in Ruby are analogous to objects in JavaScript or dictionaries in Python
# It's a collection of key-value pairs
# Declaring a hash like below is called using hash literal notation
hash = { # You can use any Ruby object as a key or value
    'key1' => 1, # Values are assigned to keys using a hash rocket
    'key2' => 2,
    'key3' => 3
};

# Values inside a hash are accessed with square brackets, referencing the key
puts hash['key1']; # Prints 1

# You can also create a hash by setting a variable equal to Hash.new
pets = Hash.new;
puts pets; # Prints {} which is an empty hash

# Adding to a hash created by hash literal notation involves specifying a key-value pair
pets["jaime"] = "vivi";
puts pets["jaime"]; # Prints vivi

# When you loop over an array or hash, you iterate over it
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"];
languages.each { |lang|
  puts lang;
};

# This is one way on how you iterate over two-dimensional arrays
sandwiches = [
    ["ham", "swiss"],
    ["turkey", "cheddar"],
    ["roast beef", "gruyere"]
];
sandwiches.each { |item|
  sub_array = item;
  sub_array.each { |second|
  puts second;
  };
};

# When iterating over hashes, you need two placeholder variables to represent each key-value pair
secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
};
secret_identities.each { |superhero, name|
    puts "#{superhero}: #{name}";
}

# Hash.new can take in an argument, which is the default value for any key
frequencies = Hash.new(0); # This would be useful for storing a histogram of how often a word appears in a string, meaning that by default every word starts at a count of 0