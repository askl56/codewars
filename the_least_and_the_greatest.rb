# Description:

# Create a method minmax_by that accepts a list and a block. The method should return an array containing the min and max list elements, based on their return values from the block

def minmax_by list, &block
  list.minmax_by(&block)
end
