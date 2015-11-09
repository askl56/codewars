# Description

# count vowels in a string

# write a function countVowels to count the number of vowels in a given string.

# countVowels("abcdefg") => 2 Ignore the case. return nil for non-string inputs countVowels(12) => nil

def countVowels(str='')
  str.scan(/[aeoui]/).count
end
