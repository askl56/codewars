# Description

# You probably know, that in Javascript (and also Ruby) there is no concept of interfaces. There is only a concept of inheritance, but you can't assume that a certain method or property exists, just because it exists in the parent prototype / class. We want to find out, whether a given object fulfils the requirements to implement the "SantaClausable" interface. We need to implement a method which checks for this interface.

# Rules

# The SantaClausable interface is implemented, if all of the following methods are defined on an object:

# sayHoHoHo() / say_ho_ho_ho
# distributeGifts() / distribute_gifts
# goDownTheChimney() / go_down_the_chimney
# Example

# class SantaClaus
#     def say_ho_ho_ho
#         # Ho Ho Ho!
#     end

#     def distribute_gifts
#         # Gifts for all!
#     end

#     def go_down_the_chimney
#         # Whoosh!
#     end
# end

# class NotSantaClaus
#     def say_ho_ho_ho
#     end
# end

# is_santa_clausable(SantaClaus.new) # must return TRUE
# is_santa_clausable(NotSantaClaus.new) # must return FALSE
# Additional Information on this Topic

# Duck Typing (Wikipedia)

def is_santa_clausable(obj)
  obj.respond_to?(:say_ho_ho_ho) &&
  obj.respond_to?(:distribute_gifts) &&
  obj.respond_to?(:go_down_the_chimney)
end
