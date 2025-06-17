
class Animal
  def speak
    puts "Animal is speaking"
  end
end

# Child Class
class Dog < Animal
  def bark
    puts "Dog is barking"
  end
end

dog = Dog.new
dog.speak   
dog.bark    
