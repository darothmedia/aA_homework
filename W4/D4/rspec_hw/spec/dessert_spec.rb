require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  
  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new("brownie", 50, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients.length).to eq(0)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {dessert.quantity("some")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("spinach")
      expect(dessert.ingredients).to include("spinach")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("spice")
      dessert.add_ingredient("everything_nice")
      expect(dessert.mix!).to_not eq(["sugar", "spice", "everything_nice"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(20)
      expect(dessert.quantity).to eq(30)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(70)}.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      dessert.serve
      expect(chef).to include(dessert.chef.name)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      dessert.make_more
      expect(chef).to receive(:bake).with(dessert)
    end
  end
end
