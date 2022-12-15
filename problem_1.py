# Problem 1:
# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def mults_sum():
    sum = 0
    for i in range(1000):
        if ((i % 3 == 0) or (i % 5 == 0)): sum += i
    return sum

def mults_sum_generalized(ceiling: int, first: int, second: int):
    sum = 0
    for i in range(ceiling):
        if ((i % first == 0) or (i % second == 0)): sum += i
    return sum

# ==============================================================================
# Tests
# ==============================================================================

if __name__ == '__main__':
    print(mults_sum())
    # 233168

    print(mults_sum_generalized(1000, 3, 5))
    # 233168

    print(mults_sum_generalized(1000, 100, 125))
    # 7500 = 100 + 125 + 200 + 250 + 300 + 375 + 400 + 500 + 600 + 625 + 700 +
    #        750 + 800 + 875 + 900

    print(mults_sum_generalized(25, 3, 4))
    # 156 = 3 + 4 + 6 + 8 + 9 + 12 + 15 + 16 + 18 + 20 + 21 + 24

    print(mults_sum_generalized(10, 3, 5))
    # 23 = 3 + 5 + 6 + 9
