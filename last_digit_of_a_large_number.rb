# Description

# Define a function

# def last_digit(n1, n2):
#   return
# that takes in two numbers a and b and returns the last decimal digit of a^b. Note that a and b may be very large!

# For example, the last decimal digit of 9^7 is 9, since 9^7 = 4782969. The last decimal digit of (2^200)^(2^300), which has over 10^92 decimal digits, is 6.

# The inputs to your function will always be non-negative integers.

# Examples

# Remarks

# JavaScript

# Since JavaScript doesn't have native arbitrary large integers, your arguments are going to be strings representing non-negative integers, e.g.

# lastDigit("10", "10000000000");
# The kata is still as hard as the variants for Haskell or Python, don't worry.

LAST_DIGITS = [
  [0],
  [1],
  [2, 4, 8, 6],
  [3, 9, 7, 1],
  [4, 6],
  [5],
  [6],
  [7, 9, 3, 1],
  [8, 4, 2, 6],
  [9, 1]
]

def last_digit(n1, n2)
  return 1 if n2 == 0
  digits = LAST_DIGITS[n1 % 10]
  digits[(n2 - 1) % digits.length]
end
