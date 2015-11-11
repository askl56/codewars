# Description

# count vowels in a string

# write a function countVowels to count the number of vowels in a given string.

# countVowels("abcdefg") => 2 Ignore the case. return nil for non-string inputs countVowels(12) => nil

def countVowels(str='')
  num_vowels = 0

  i = 0
  while i < str.length
    if (str[i] == "a" || str[i] == "e" || str[i] == "i" || str[i] == "o" || str[i] == "u")
      num_vowels += 1
    end

    i += 1
  end

  return num_vowels
end
