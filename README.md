# Sum of digits calculator
Write a class with a method that takes a number as an input and calculates the sum of its digits, until there is a single digit answer. Include the tests.

For examples:
* When receiving 16 as a parameter it returns 7 (16 --> 1 + 6)
* When receiving 942 as a parameter it returns 6 (942 --> 9 + 4 + 2 = 15 --> = 1 + 5 = 6)
* When receiving 99999999999 as a parameter it returns 9 (99999999999 --> 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 + 9 = 99 --> = 9 + 9 = 18 --> = 1 + 8 = 9)

# Solution
In order to solve the described problem I created the following structure and files:

- Gemfile - I have added `rspec` for specs and `require_all` gem used to require entire folders when needed.
- /bin - Having the executable file used to run it from the console + a small validation of the input
- /lib - Containing actually the `sum_of_digits_calculator.rb` used to provide us the sing digits sum of the input number
- /rspec - Containing the specs to validate the implementation

# Assumptions
1. I have restricted the input passed to the calculator to be a positive integer (including 0). Didn;'t created a separate validator as was not discussed or asked before.
2. I didn't used ruby build in methods like `reduce(:+)` as I thought are doing to much complex for what we need
   - This could have been a different implementation using `reduce`
      ````ruby
        def self.calculate_sum(num)
          return num if num < 10

          sum = num.to_s.split('').map(&:to_i).reduce(:+)

          self.calculate_sum(sum)
        end
      ````


# How to run it
### Calculator
`> bin/sum_of_digits <number>` or `ruby bin/sum_of_digits <number>` in case permision denied.

### Specs
`> rspec spec`
