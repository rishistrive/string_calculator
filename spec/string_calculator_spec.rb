require 'rspec'

require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    context 'when input is an empty string' do
      it 'returns 0 for an empty string' do
        calculator = StringCalculator.new
        expect(calculator.add('')).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number' do
        calculator = StringCalculator.new
        expect(calculator.add('5')).to eq(5)
      end
    end

    context 'when input has multiple numbers separated by comma' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.add('1,5')).to eq(6)
      end
    end
  end
end
