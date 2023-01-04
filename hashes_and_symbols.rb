# Within hashes, keys must be unique but values can repeat
literal = { # Make a hash using literal notation
    "vivi" => "cute",
    "jinkx" => "cute",
    "tex" => "funny-looking"
}

constructor = Hash.new; # Make a hash using constructor notation
constructor["vivi"] = "cute";

puts literal["vivi"]; # Prints cute
puts constructor["vivi"]; # Prints cute

# Iterate over a hash using .each method
literal.each { |key, value|
    puts literal[key]; # Will print cute, cute, funny-looking
}

# false (Boolean) and nil (nothing at all) are the only two non-true values in Ruby
# Accessing a key in a hash that doesn't exist will return nil
# To avoid this, you can assign a default value to a key if you use constructor notation
cats = Hash.new("vivi"); # vivi is the default value for a key that doesn't exist in cats
puts cats["gay"]; # Prints vivi

# Rubyists prefer to use symbols as keys, rather than strings
# Symbols are distinct from strings in that there's only one copy of a symbol at a time while there can be many strings with the same value
# Ruby's .object_id method gets the object ID of an object
puts "string".object_id; # Prints something different than below because "string" and "string" are different objects
puts "string".object_id;
puts :symbol.object_id; # Prints the same object ID because :symbol is the same object
puts :symbol.object_id;

# Symbols are made with a colon
# They're primarily used as hash keys or to reference method names
my_symbol = :hey; # Makes a symbol with the name hey

# Symbols make good hash keys for 3 reasons:
    # They’re immutable, meaning they can’t be changed once they’re created
    # Only one copy of any symbol exists at a given time, so they save memory
    # Symbol-as-keys are faster than strings-as-keys because of the above two reasons
    # Thus, hash lookup is faster with symbol keys than with string keys
symbol_hash = {
    :one => 1,
    :two => 2,
    :three => 3
}
puts symbol_hash[:one]; # Prints 1

# The .to_s and .to_sym methods convert between strings and symbols
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"];
symbols = Array.new;
strings.each { |item|
    symbols.push(item.to_sym); # .intern instead of .to_sym does the same thing
}
puts symbols; # Prints an array of symbols

# The new Ruby hash syntax for symbols as keys just looks like JSON
movies = {
    zootopia: "animals",
    scream: "scary"
}
puts movies[:scream]; # Prints scary

# Use .select method to filter a hash for values that meet certain criteria
movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
}
good_movies = movie_ratings.select { |movie, score|
    score > 3;
}
puts good_movies; # Prints all movies with score > 3

# To iterate over just keys or just values, use .each_key and .each_value which use one |placeholder| variable each
# To delete a key in a hash, use .delete method
movies.delete(:scream); # Delete the key:value pair in movies hash with the key symbol of scream
puts movies; # Prints just {:zootopia=>"animals"}