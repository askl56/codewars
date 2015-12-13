# Description

# Sometimes you need to know all classes that inherited from you, and to be able to do simple things like listing or calling all of them.

# Write a class called "Mother" that tracks all inheritances that are done to her (and her kids), together with a class method "phone_kids" that calls in turn the class method "phone" of all kids.

# So if you have two kids

# class Foo < Mother
# end

# class Bar < Mother
# end
# The line

# Mother.phone_kids
# Would call (in either order)

# Foo.phone
# Bar.phone

class Mother
  # Add a method (or more) to track all kids
  def self.descendants
     @descendants ||= []
  end

  def self.inherited(descendant)
    descendants << descendant
  end


  def self.phone_kids
    @descendants.each {|x| x.send(:phone) }
  end
end
