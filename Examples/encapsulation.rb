class Person
  def initialize(name, profession)
    @name, @profession = name, profession
  end
  def name
    @name
  end
  def info
    "Name: #{@name}, Profession: #{@profession}"
  end
  def setProfession(profession) # We can use methods to update the instance variables.
    @profession = profession
  end
end

p = Person.new("Karan", "Developer")
puts p.name # This will throw an error as we cannot access the instance variables directly. We need to create a method to access the instance variables.

puts p.info # This will work as we have created a method to access the instance variables.

p.setProfession("Software Engineer") # This will work as we have created a method to update the instance variables.
puts p.info
