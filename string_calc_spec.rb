require 'rspec'

RSpec.describe StringCalculator do
  describe "#add_numbers" do
    it "returns sum of numbers" do
      object = StringCalculator.new
      expect(object.add_numbers("1,5")).to eq(6)
    end
  end

  context 'when the string has different delimiters and special characters' do
    it 'returns sum of numbers' do
      object = StringCalculator.new
      expect(object.add_numbers("//;\n1;2")).to eq(3)
    end
  end

  context 'when the string has negative numbers' do
    it 'raises exception' do
      object = StringCalculator.new
      expect(object.add_numbers("1,5,4,-1,-2")).to eq("Negative numbers are not allowed -1,-2")
    end
  end

  context 'when the string has numbers greater than 1000' do
    it 'ignores more than 1000' do
      object = StringCalculator.new
      expect(object.add_numbers("//;\n3;20,1002,2340")).to eq(23)
    end
  end

  context 'when the string has delimiters can be of any length' do
    it 'returns sum' do
      object = StringCalculator.new
      expect(object.add_numbers("//[***]\n1***2***3")).to eq(6)
    end
  end

end

