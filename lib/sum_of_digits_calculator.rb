# Write a class with a method that takes a number as an input and calculates the sum of its digits, until there is a single digit answer. Include the tests.
# For examples:
# When receiving 16 as a parameter it returns 7 (16 --> 1 + 6)
# When receiving 942 as a parameter it returns 6 (942 --> 9 + 4 + 2 = 15 --> = 1 + 5 = 6)
# When receiving 99999999999 as a parameter it returns 9 (99999999999 --> 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 = 99 --> = 9 + 9 = 18 --> = 1 + 8 = 9)

class SumOfDigitsCalculator

  def self.calculate_sum(num)
    sum = 0

    loop do
      sum += num % 10
      break if (num = num / 10) == 0
    end

    sum < 10 ? sum : self.calculate_sum(sum)
  end

end
