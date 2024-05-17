require 'rspec'

RSpec.describe StringCalculator do
  describe "#add_numbers" do
    it "returns sum of non negative numbers" do
      object = StringCalculator.new
      expect(object.add_numbers("1,5")).to eq(6)
    end
  end
end

