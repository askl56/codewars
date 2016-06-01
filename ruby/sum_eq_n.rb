# Define a method sum_eq_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.

# Examples:

# sum_eq_n?([1, 2, 3, 4], 6) == true  # 4 + 2 = 6
# sum_eq_n?([1, 2, 3, 4], 8) == false # Not possible
# sum_eq_n?([], 0) == true # An empty array should sum to 0
# sum_eq_n?([], 1) == false # Not possible

def sum_eq_n?(arr, n)
  return true if arr.empty? and n.zero?
  arr.combination(2).any? {|a, b| a + b == n}
end
