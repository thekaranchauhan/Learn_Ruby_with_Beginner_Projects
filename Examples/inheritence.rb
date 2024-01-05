class Person
  def initialize (name, age)
    @name = name
    @age = age
  end
  def test
    puts "test"
  end
end

class Employee < Person
  def displayInfo
    puts "Name: #{@name} Age: #{@age}"
  end
end

e = Employee.new("John", 42)
e.displayInfo
e.test

Employee.ancestors # returns array of classes and modules
p Employee.ancestors
p String.ancestors
