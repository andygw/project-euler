# Problem 1:
# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def mults_sum
  sum = 0
  (1...1000).each { |i| sum += i if (i % 3).zero? || (i % 5).zero? }
  sum
end

# Generalized for any max number and divisors
def mults_sum_generalized(ceiling, first, second)
  sum = 0
  (1...ceiling).each do |i|
    sum += i if ((i % first).zero? || (i % second).zero?)
  end
  sum
end

# ==============================================================================
# Tests
# ==============================================================================

p mults_sum
# 233168

p mults_sum_generalized(1000, 3, 5)
# 233168

p mults_sum_generalized(1000, 100, 125)
# 7500 = 100 + 125 + 200 + 250 + 300 + 375 + 400 + 500 + 600 + 625 + 700 +
#        750 + 800 + 875 + 900

p mults_sum_generalized(25, 3, 4)
# 156 = 3 + 4 + 6 + 8 + 9 + 12 + 15 + 16 + 18 + 20 + 21 + 24

p mults_sum_generalized(10, 3, 5)
# 23 = 3 + 5 + 6 + 9
