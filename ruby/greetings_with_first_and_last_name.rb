# Description

# Create a Person class with a greet method that returns the first
# and last name of the person with a greeting.

# For example if the first name is 'Bob' and the last name is 'Smith' then it should return 'Hello, Bob Smith!'.

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def greet
    "Hello, #{@first_name} #{@last_name}!"
  end
end

describe 'greeting people' do
  person = Person.new('Bob', 'Smith')
  Test.assert_equals(person.greet, 'Hello, Bob Smith!')
end
