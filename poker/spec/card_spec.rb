require "rspec"
require "card"

RSpec.describe Card do
  describe "#initialize" do
    subject(:c) { Card.new(:clubs, :deuce) }

    # it "raises an error if value or suit doesn't exist" do
    #   expect { c }.to raise_error(ArgumentError)
    # end    
    
    it "sets value" do
      #expect(c.value).to be_a(Symbol)
      expect(c.value).to eq(:deuce)
    end
    it "sets suit" do
      #expect(c.suit).to be_a(Symbol)
      expect(c.suit).to eq(:clubs)
    end
  end

  # describe "self::suits" do
  #   it "returns all the keys of the suits hash" do
  #     expect(Card.suits).to eq([:clubs, :diamonds, :hearts, :spades])
  #   end
  # end

  # describe "self::values" do
  #   it "returns all the keys of the values hash" do
  #     expect(Card.values).to eq(VALUE_STRINGS.keys)
  #   end
  # end

  describe "#==" do
    subject(:c) { Card.new(:clubs, :deuce) }
    let(:other_card) { Card.new(:clubs, :deuce)}
    it "checks if self is equal to other card" do
      expect(c == other_card).to eq(true)
    end
  end

  describe "#to_s" do
    subject(:c) { Card.new(:clubs, :deuce) }

    it "returns value with suit" do
      expect(c.to_s).to eq("2♣")
    end
  end
end