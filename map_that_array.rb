# Description

# Create a method map that accepts a list and a block, runs the block for each item in the list, and returns a new array with the block return values.

# If you need help, here's a reference:

# http://www.rubycuts.com/enum-map


def map(list, &block)
  list.map(&block)
end


describe "map" do
  list = [3,5,8,13]
  Test.assert_equals(map(list){|item| item}, [3,5,8,13], "map should return the same array by default")
end
