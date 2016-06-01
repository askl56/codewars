# Description

# Return the array/list passed into the function with all duplicates removed.

# The items in the returned array should be sorted alphabetically, with numbers before strings.

# The function should remove any null, undefined and invalid values from the array
# (in JS: all falsey values (NaN, false, undefined, null etc.) have to be removed).
# If the variable is not an array/list, the function should return a string “Not an array”.

def array_de_dup(array)
  array.uniq.compact.sort_by(&:to_s) rescue 'Not an array'
end
