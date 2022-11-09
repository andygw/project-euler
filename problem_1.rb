# Problem 1:
# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
# frozen_string_literal: true

def mults_sum
  sum = 0
  (1...1000).each { |i| sum += i if (i % 3).zero? || (i % 5).zero? }
  sum
end

# Generalized for any max number and divisors
def mults_sum_generalized(ceiling, first, second)
  sum = 0
  (1...ceiling).each { |i| sum += i if (i % first).zero? || (i % second).zero? }
  sum
end

p mults_sum
p mults_sum_generalized(1000, 3, 5)
p mults_sum_generalized(1000, 7, 11)
p mults_sum_generalized(10, 3, 5)
