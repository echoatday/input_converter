## rspec --format documentation
require 'converter'

describe Converter do
    it "knows that true is true" do
        expect(true).to eql true
    end

    it "when I convert 10, I get 'A'" do
        converter = Converter.new
        answer = converter.base_number 10,16
        expect(answer).to eql "A"
    end

    it "when I convert 17, I get '11'" do
        converter = Converter.new
        answer = converter.base_number 17,16
        expect(answer).to eql "11"
    end

    it "when I convert 1899, I get 76B" do
        converter = Converter.new
        answer = converter.base_number 1899,16
        expect(answer).to eql "76B"
    end

    it "when I input a base out of range" do
        converter = Converter.new
        answer = converter.base_number 13,37
        expect(answer).to eql "This format only works for base 2 to 36 number systems."
    end
end