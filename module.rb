module Mymodule
def greet
puts"Hello i m talking from the module"
end 
end
class Person 
include Mymodule
end

p=Person.new
p.greet

