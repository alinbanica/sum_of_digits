require 'spec_helper'
require_relative '../../lib/sum_of_digits_calculator.rb'

RSpec.describe SumOfDigitsCalculator do

  subject { described_class.calculate_sum(num) }

  context 'when a valid input number provided' do
    describe 'calculate sum of digits for number 16' do
      let(:num) { 16 }
      it { is_expected.to eq(7) }
    end

    describe 'calculate sum of digits for number 942' do
      let(:num) { 6 }
      it { is_expected.to eq(6) }
    end

    describe 'calculate sum of digits for number 99999999999' do
      let(:num) { 99999999999 }
      it { is_expected.to eq(9) }
    end
  end

end