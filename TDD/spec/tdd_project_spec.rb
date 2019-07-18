require 'rspec'
require "tdd_project"

RSpec.describe Array do
  
  describe "#uniq" do
    subject(:array) do
      [1, 2, 1, 3, 3]
    end
    it "Should return an array" do
      expect(array.uniq).to be_a(Array)
    end

    it "Removes duplicates from an array" do
      expect(array.uniq).to eq([1, 2, 3])
    end

  end

  describe "#two_sum" do
    subject(:array) do
      [-1, 0, 2, -2, 1]
    end

    it "Should return an array" do
      expect(array.two_sum).to be_a(Array)
    end

    it "Removes duplicates from an array" do
      expect(array.two_sum).to eq([[0,4], [2,3]])
    end
  end

  describe "#my_transpose" do
    subject(:array) do
      [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
    end

    it "Should return an array" do
      expect(array.my_transpose).to be_a(Array)
    end

    it "Removes duplicates from an array" do
      expect(array.my_transpose).to eq([ [0,]])
    end
  end
end

