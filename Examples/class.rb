# class Person

# end

# p1 = Person.new
# p2 = Person.new

# puts p1.class
# puts p2


# class Person

#   def initialize (name, age)
#     @name = name
#     @age = age
#   end
#   def displayPerson
#     puts "Name: #{@name} Age: #{@age}"
#   end
#   def name # getter method
#     @name
#   end
#   def name=(new_name) # setter method
#     @name = new_name
#   end
# end

# p = Person.new("John", 42)
# p.displayPerson

# puts p.name !Gives no method error, because instance variable cannot access directly. We need getter and setter method to access instance variable.
# puts p.name ! now it will work

# p.name ! Gives no method error, because instance variable cannot access directly. Define setter method to access instance variable.
# p.name = "John Smith" ! now it will work


# class Person
#   attr_accessor :name , :age #now we can access instance variable directly

#   attr_reader :name
#   attr_writer :name

#   def initialize (name, age)
#     @name = name
#     @age = age
#   end
#   def displayPerson
#     puts "Name: #{@name} Age: #{@age}"
#   end
# end

# p = Person.new("John", 42)

# p.name = "Hehe"
# p.age = 24

# puts p.name
# puts p.age


class Person
  # Message = "Class constant"
  @@counter = 0
  # MESSAGE = "Class constant"
  def initialize
    @@counter += 1
  end
  def self.counter #getter method for class variable
    @@counter
  end
  def self.counter=(new_counter)
    @@counter = new_counter
  end
end

# puts Person::Message
# puts Person::MESSAGE

p1 = Person.new
p2 = Person.new
p3 = Person.new


# puts Person.counter ! Gives error, because counter is class variable. We need to define getter method to access class variable.

# Person.counter = 5  Gives error, because counter is class variable. We need to define setter method to access class variable.
Person.counter = 5 # now it will work
puts Person.counter # now it will work
