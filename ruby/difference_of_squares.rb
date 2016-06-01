# Description

# Find the difference between the sum of the squares of the first n natural numbers (1 <= n <= 100) and the square of their sum. For example, when n = 10:

# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

def difference_of_squares(x)
  square_of_sum = (1..x).reduce(:+) ** 2
  sum_of_squares = (1..x).reduce { |sum, number| sum + (number ** 2) }

  square_of_sum - sum_of_squares
end

