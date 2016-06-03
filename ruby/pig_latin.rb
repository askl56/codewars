# Simple Pig Latin
#
# Move the first letter of each word to the end of it,
# then add 'ay' to the end of the word.

def pig_it(text)
  text.gsub(/\w+/) do |word|
    word.scan(/./).rotate(1).join + 'ay'
  end
end
