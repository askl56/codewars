# Description

# Write a function to multiply a number (x) by a given number
# (y) a certain number of times (n).
# The results are to be returned in an array.

def multiply_by x,y,n
  (1..n).map {|i| x * y**i}
end


