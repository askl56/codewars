# Description

# Combine strings function

# Create a function named combineNames(combine_names in python, ruby) that accepts two parameters (first and last name). The function should return the full name.

# Example:

# combine_names('James', 'Stevens')
# returns:

# 'James Stevens'

def combine_names(*args)
  args.join(' ')
end
