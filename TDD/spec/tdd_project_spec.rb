require 'rspec'
require "tdd_project"

RSpec.describe Array do
  subject(:array) do
    [1, 2, 1, 3, 3]
  end

  describe "#uniq" do
    it "Should return an array" do
      expect(array.uniq).to be_a(Array)
    end

    it "Removes duplicates from an array" do
      expect(array.uniq).to eq([1, 2, 3])
    end

  end



end

