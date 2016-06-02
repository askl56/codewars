# Description

# "Any word or phrase that exactly reproduces the letters in another order is an anagram." (Wikipedia). Add numbers to this definition to be more interest.

# Examples of anagrams:

# William Shakespeare = I am a weakish speller
# silent = listen
# 12345 = 54321

# The challenge is to write the function isAnagram to return True if the
# word test is an anagram of the word original and False if not.

# Note: Anagrams are case insensitive, ignore all non-alphanumeric characters, input will always be two strings.

# Also: two identical words may be considered to be an edge case of an anagram, but for this kata they are still correct anagrams.

def isAnagram(test, original)
  str1 = test.split("").map{ |x| x.ord}.inject(:+)
  str2 = original.split("").map{ |x| x.ord}.inject(:+)
  str1 == str2
end