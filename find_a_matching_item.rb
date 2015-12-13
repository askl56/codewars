# Description

# Create a method find that accepts a list and a block, and returns the first item for which the block returns true. If no item in the list matches, return nil.

# If you need help, here's a reference:

def find list, &block
  list.find(&block)
end
