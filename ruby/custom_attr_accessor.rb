# Description

# Some time ago, you wrote the class SuperFoo. It has only one attribute, data, which is initialized as a hash:

# class SuperFoo
#   attr_accessor :data

#   def initialize
#     @data = {}
#   end
# end
# Naturally, you put things into the hash from time to time:

# super_foo = SuperFoo.new
# super_foo.data[:buzz] = "BUZZ"
# super_foo.data[:buzz]
# #=> "BUZZ"
# But then you got tired of typing hash things, and made some getters and setters to make accessing data easier.

# class SuperFoo

#   attr_accessor :data

#   def initialize
#     @data = {}
#   end

#   def buzz
#     @data[:buzz]
#   end

#   def buzz=(value)
#     @data[:buzz] = value
#   end

# end

# super_foo = SuperFoo.new
# super_foo.buzz = "BUZZ"
# super_foo.buzz
# #=> "BUZZ"
# That was nice for a while. But now, you have been tasked with making literally dozens of classes that inherit from SuperFoo, each of which will have their own unique variables that will be stored in the data hash. You shudder at the thought of writing your getter and setter methods over and over again, especially because you hate repeating code.

# You figure there has to be a way to dynamically generate these methods...

# Well, there is!

# In this kata, you must write a class-level method called data_accessor. It will define your "data getters and setters" for all names you pass to it.

# Basically, you are defining a custom attr_accessor method, which will let you do this:

# class SubFoo < SuperFoo
#   data_accessor :fizz, :pi
# end

# sub_foo = SubFoo.new

# sub_foo.fizz = "FIZZ"
# sub_foo.fizz
# #=> "FIZZ"

# sub_foo.pi = 3.14
# sub_foo.pi
# #=> 3.14

# sub_foo.data
# #=> {:fizz => "FIZZ", :pi => 3.14}

# sub_foo.instance_variables
# #=> [:@data]

class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}
  end

  def self.data_accessor(*args)
    args.each do |arg|
      define_method("#{arg}=") do |val|
        @data[arg] = val
      end
      define_method("#{arg}") do
        @data[arg]
      end
    end
  end
end
