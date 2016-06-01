# Invalid Input - Error Handling #1

# Error Handling is very important in coding. Most error handling seems to be overlooked or not implemented properly.
# Task

# Your task is to implement a function which is expected to take a string and return an object containing the properties vowels and consonants The vowels property must contain the total count of vowels ('y' in this case is not a vowel), and consonants are any other letters, you must also trim any spaces. Don't forget to handle invalid input, though you must always return valid output.

# Input

# The input you are expecting is any random string you must then discern what are vowels and what are consonants and sum their total occurances in an object. However you may also receieve inputs that are not strings. If this happens, then you must return an object with the vowel and consonant total of 0 because the input was NOT a string. Refer to the Example section for a more visual representation of what inputs you may receive and the outputs expected. :)

# Example:

# Input: get_count('test')
# Output: {vowels=>1,consonants=>3}

# Input: get_count('tEst')
# Output: {vowels=>1,consonants=>3}

# Input get_count('    ')
# Output: {vowels=>0,consonants=>0}

# Input get_count()
# Output: {vowels=>0,consonants=>0}

def get_count(words)
  vowels = words.downcase.count 'a-z', 'aeiou'
  consonants = words.downcase.count 'a-z', '^aeiou'

  {"vowels" => vowels, "consonants" => consonants}
end
