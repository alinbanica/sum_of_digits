# Sum of digits calculator - problem to solve
Write a class with a method that takes a number as an input and calculates the sum of its digits, until there is a single digit answer. Include the tests.

For examples:
When receiving 16 as a parameter it returns 7 (16 --> 1 + 6)
When receiving 942 as a parameter it returns 6 (942 --> 9 + 4 + 2 = 15 --> = 1 + 5 = 6)
When receiving 99999999999 as a parameter it returns 9 (99999999999 --> 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 = 99 --> = 9 + 9 = 18 --> = 1 + 8 = 9)

# Solution
In order to solve the described problem I created the following structure:

- Gemfile - I have added `rspec` for specs and `require_all` gem used to require entire folders when needed.
- /bin - Having the executable file used to run it from the console
- /lib - Containing actually the `sum_of_digits_calculator.rb` used to provide us the sing digits sum of the input number

# Assumptions
1. I have restricted the input passed to the calculator to be a positive integer (including 0)
2. I didn't used ruby build in `reduce(:+)` method. This could have been a different implementation
  ````ruby
    def self.calculate_sum(num)
      return num if num < 10

      sum = num.to_s.split('').map(&:to_i).reduce(:+)

      self.calculate_sum(sum)
    end
  ````

# How to run it
`> bin/sum_of_digits <number>`