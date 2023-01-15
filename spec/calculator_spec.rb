#spec/calculator_spec.rb
require './lib/calculator'

# describe is an RSpec keyword that defines an “Example Group”, or a collection of tests
# The it keyword defines an individual example (aka, test)
describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
  end

  describe "#multiply" do
    it "returns the product of two numbers" do
        calculator = Calculator.new
        expect(calculator.multiply(3, 5)).to eql(15)
    end
  end

  describe ".speak" do
    it "returns a string" do
        expect(Calculator.speak).to eql ("This is a class method")
    end
  end
end