# frozen_string_literal: true

require 'spec_helper'
require_relative '../../lib/sum_of_digits_calculator'

RSpec.shared_examples 'calculating_sum_of_digits' do
  describe 'calculate sum of digits for input number' do
    it { is_expected.to eq(calculated_sum) }
  end
end

RSpec.describe SumOfDigitsCalculator do
  subject { described_class.calculate_sum(input_num) }

  context 'when a valid input number provided' do
    it_behaves_like 'calculating_sum_of_digits' do
      let(:input_num) { 16 }
      let(:calculated_sum) { 7 }
    end

    it_behaves_like 'calculating_sum_of_digits' do
      let(:input_num) { 942 }
      let(:calculated_sum) { 6 }
    end

    it_behaves_like 'calculating_sum_of_digits' do
      let(:input_num) { 99_999_999_999 }
      let(:calculated_sum) { 9 }
    end

    it_behaves_like 'calculating_sum_of_digits' do
      let(:input_num) { 5 }
      let(:calculated_sum) { 5 }
    end
  end
end
