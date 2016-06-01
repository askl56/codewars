# Description

# Email addresses are notoriously difficult to validate.

# Create a method that takes an email and returns true if valid, false otherwise.

# Tip: It doesn't have to be perfect.

# For example:

# validate('joe@example.com') => true
# validate('joe') => false
# Here's tool that may help: http://rubular.com/

# I suggest not using some code that you find on the internet.

# Yes, there are regexes that do email validation. But what is the purpose of copying and pasting?

# Also, you do not need to use a regex. There are many ways of solving this

def validate(email)
  email.scan(/\b(?:[\w\d\S]+)@(?:[\w\d\-\.]){1,253}[\.](?:[\w]{2,5})\b/).length > 0
end
