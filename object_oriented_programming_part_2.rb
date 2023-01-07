# When creating a class, Ruby allows you to make some methods public (allow for an interface with the rest of the program) or private (only for classes to do their own work)
# Methods are public by default unless you specify with the "private" keyword
# Private methods are private to the object where they are defined. This means you can only call these methods from other code inside the object.
# Another way to say this is that the method cannot be called with an explicit receiver. You’ve been using receivers all along—these are the objects on which methods are called! Whenever you call object.method, object is the receiver of the method.
# In order to access private information, we have to create public methods that know how to get it
# Public methods in a class may rely on private methods (such as returning a value)
class Dog
    def initialize(name)
        @name = name
    end

    public

    def bark
        puts "Woof!"
    end

    private

    def in
        @id = 1234
    end
end

# Ruby needs methods in order to access attributes (for example, a method that simply returns a value like .length is to String)
# We can use attr_reader to access a variable and attr_writer to change it
# Pass your instance variables (as symbols) to attr_reader or attr_writer
# The attr stands for attribute
class Person
    attr_reader :name
    attr_writer :name
    def initialize(name)
      @name = name
    end
end
# does the same thing like
# def name
#     @name
#   end
   
#   def name=(value)
#     @name = value
# end
# attr_accessor is a shortcut to combine _reader and _writer, if you want to read AND write a particular variable

# You can import modules to use the constants and methods inside, if you need them in your program
# They're like classes, but can't create instances (objects) and can't have subclasses; they just store things
module ModuleName
    # Bits 'n pieces
end
# One of the main purposes of modules is to separate methods and constants into names spaces, called namespacing
# Math::PI and Circle::PI make use of the scope resolution operator (::) which tells Ruby where to look for a specific bit of code
# Bring in a module with the require keyword
require 'module'

# You can also include a module in a class definition, which allows a class to use that module's methods
# We mix together the behaviors of a class and a module
class Angle
    include Math # Include Math module
    attr_accessor :radians # Make radians readable and writable
    
    def initialize(radians) # Create a radians instance variable given a radians argument
      @radians = radians
    end
    
    def cosine # Method to return cosine
      cos(@radians)
    end
end
  
acute = Angle.new(1) # Make an object called acute with a radian of 1
puts acute.cosine # Prints the cosine of 1

# When a module is used to mix additional behavior and information into a class, it’s called a mixin
# Mixins give us the ability to mimic inheriting from more than one class: by mixing in traits from various modules as needed, we can add any combination of behaviors to our classes we like

# Whereas include mixes a module’s methods in at the instance level (allowing instances of a particular class to use the methods), the extend keyword mixes a module’s methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.