# Description:

# Given an integer as input, can you round it to the next 5?

# Examples:

# input:    output:
# 0    ->   0
# 2    ->   5
# 3    ->   5
# 12   ->   15
# 21   ->   25
# 30   ->   30
# etc.

def round_to_next_5(n)
  n % 5 == 0 ? n : (n/5 + 1) * 5
end
