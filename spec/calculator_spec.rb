require 'calculator'

RSpec.describe "Calculator" do
  describe "add(first, second)" do

    context "adds 0 and 0" do
      it 'returns 0' do
        expect(add(0,0)).to eq(0)
      end
    end

    context "adds 2 and 2" do
      it 'returns 4' do
        expect(add(2,2)).to eq(4)
      end
    end

    context "adds positive numbers" do
      it 'returns 8' do
        expect(add(2,6)).to eq(8)
      end
    end
  end

  describe "subtract(first, second)" do
    context "subtract numbers" do
      it 'returns 6' do
        expect(subtract(10,4)).to eq(6)
      end
    end

    context "subtract numbers reverse" do
      it 'returns 6' do
        expect(subtract(4,10)).to eq(6)
      end
    end
  end

  describe "sum(input)" do
    context "computes the sum of an empty array" do
      it 'returns 0' do
        expect(sum([])).to eq(0)
      end
    end

    context "computes the sum of an array of one number" do
      it 'returns 7' do
        expect(sum([7])).to eq(7)
      end
    end

    context "computes the sum of an array of two numbers" do
      it 'returns 18' do
        expect(sum([7, 11])).to eq(18)
      end
    end

    context "computes the sum of an array of many numbers" do
      it 'returns 25' do
        expect(sum([1, 3, 5, 7, 9])).to eq(25)
      end
    end
  end

  describe "multiply(input)" do

    context "multiplies empty numbers" do
      it 'returns 0' do
        expect(multiply([])).to eq(0)
      end
    end

    context "multiplies two numbers" do
      it 'returns 6' do
        expect(multiply([2, 3])).to eq(6)
      end
    end

    context "multiplies several numbers" do
      it 'returns 210' do
        expect(multiply([2, 3, 5, 7])).to eq(210)
      end
    end
  end
end