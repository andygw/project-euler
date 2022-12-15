# Problem 5
# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# We start at 20 (and will incrememnt by 20) because we already know the answer
# must be divisible by 20. There's no point in checking numbers 1-19, 21-39, and
# so on when we know those won't be divisible by 20.
number = 20

# Using this to time the solution
start_time = Time.now

# We can skp checking 2 through 10, since those are redundant. Each of these
# will already be considered when looking at 11 through 20. For example, when we
# check if the number is divisible by 18, that also checks that it's divisible
# by 2, 3, 6, and 9.
while (number % 11 > 0 || number % 12 > 0 || number % 13 > 0 ||
  number % 14 > 0 || number % 15 > 0 || number % 16 > 0 || number % 17 > 0 ||
  number % 18 > 0 || number % 19 > 0)
  puts "Checking #{number}"
  number += 20
end
# Ugly solution. Takes around 75 seconds.

puts ""
puts ""
puts "#{number} (solution found in #{Time.now - start_time} seconds)"
