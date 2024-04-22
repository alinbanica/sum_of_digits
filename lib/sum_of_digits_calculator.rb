# frozen_string_literal: true

# Class with a method that takes a number as an input and calculates the sum of its digits,
# until there is a single digit answer.
class SumOfDigitsCalculator
  def self.calculate_sum(num)
    return num if num < 10

    sum = 0

    loop do
      sum += num % 10
      break if (num /= 10).zero?
    end

    calculate_sum(sum)
  end
end
