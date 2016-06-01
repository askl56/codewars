# Description:

# You have a sequence of positive numbers starting with 1, but one number is missing!

# Find out the missing number; if the sequence is not broken, you should return 0. Each sequence always increments by 1.

# In short: an invalid sequence must return 1, an already complete (or empty) sequence must return 0; otherwise return the missing element.

# Note that the sequence may be shuffled.

# E.g.

# find_missing_number("1 2 3 5") # returns 4
# find_missing_number("1 2 3 4") # returns 0
# find_missing_number("5 1 3 4") # returns 2

def find_missing_number(sequence)
  return 0 if sequence.empty?
  array = sequence.split(" ").map {|i| i.to_i}.sort
  return 1 if array.first != 1
  return (array.first..array.last).reduce(:+) - array.reduce(:+)
end
