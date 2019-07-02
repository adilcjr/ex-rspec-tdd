require 'calculator'

describe Calculator, "Sobre a calculadora" do

  subject(:calc) { described_class.new() }

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      result = calc.sum(5, -7)
      expect(result).to eq(-2)
    end
    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end

  context '#div' do
    it 'with positive numbers' do
      result = calc.div(6, 2)
      expect(result).to eq(3)
    end    
    it 'divide by 0' do
      expect{ calc.div(10, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end