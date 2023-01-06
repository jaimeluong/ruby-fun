# Ruby is an object-oriented language, which means it manipulates programming constructs called objects
# Objects have methods and attributes
# A class is a way of organizing and producing objects with similar attributes and methods
# Thus, an object like "Vivi" is a string BECAUSE it's an instance of the String class

# A basic class looks like this
class Language
    def initialize(a_name, a_creator) # initialize is the method that "boots up" each object the class creates
        @name = a_name # Use @ before a variable to signify that it's an instance variable, which is a variable attached to an instance of a class
        @creator = a_creator
    end
end
# The instance variables tell Ruby that when it creates a new instance of Language, each instance will have its own @name

# Instantiate an object like this
lang = Language.new("Ruby", "Matz")

# $ to indicate global variables; you can always make any variable global by defining it outside of a method or class by just making it
# @ to indicate instance variables, which belong to a particular object (or "instance")
# @@ to indicate class variables, they belong to the class itself rather than any instances of the class
    # Because there's only one copy of a class variable shared by all instances of a class, you can use them to persist data across object instantiation

# Inheritance is the process by which one class takes on the attributes and methods of another, and it’s used to express an is-a relationship
# Think of it like a family tree and common ancestors
# Classes that inherit from a parent class have access to the methods and attributes of the parent class via inheritance
class DerivedClass < BaseClass
    # Some stuff!
end

# Any methods created in a derived class that share the same method name as one in the parent class will override the parent class's version
# You can directly access the attributes or methods of a superclass with Ruby’s built-in super keyword, in case you've overwritten a method or attribute defined in the class's superclass
class DerivedClass < Base
    def some_method
      super(optional args)
        # Some stuff
      end
    end
end
# When you call super from inside a method, that tells Ruby to look in the superclass of the current class and find a method with the same name as the one from which super is called. If it finds it, Ruby will use the superclass’ version of the method.

# Any given Ruby class can only have ONE parent class
# Some programming languages allow a class to have multiple parents, which is called multiple inheritance

# If you want to end a Ruby statement without going to a new line, you can just type a semicolon
class Monkey
end # Same as class Monkey; end

# To make a class variable accessible from outside, you use a class method to grab it
# A class method belongs to the class itself, and for that reason, it’s prefixed with the class name
class Machine
    def Machine.hello
      puts "Hello from the machine!"
    end
end