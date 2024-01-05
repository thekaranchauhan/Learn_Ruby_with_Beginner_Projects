class Animal
  def swim
    puts "Swimming"
  end
end

class Tiger < Animal
  def swim
    puts "Tigers can swim" # This will override the swim method in the Animal class.
  end
end

tiger = Tiger.new
tiger.swim


class Point
  attr_accessor :x, :y # This will create getter and setter methods for the instance variables.
  def initialize(x,y)
    @x, @y = x, y
  end
  def to_s # This will override the to_s method in the Object class.
    "(#{@x},#{@y})"
  end

  def +(other) # This will override the + method in the Object class.
    Point.new(@x + other.x, @y + other.y)
  end
end

p = Point.new(1,2)
puts p # So to_s method is called automatically when we try to print an object.

p1 = Point.new(3,4)
p2 = Point.new(5,6)
puts p1 + p2 # This will throw an error as we have not defined the + method for the Point class.
