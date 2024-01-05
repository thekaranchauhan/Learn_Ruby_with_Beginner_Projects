# ////////////////////METHODS////////////////////
# def hello(name)
#   puts "Hello #{name}"
# end

# hello "John"
# hello ("John")


# def hello(name)
#   message = "Hello #{name}"
#   return message
# end

# puts hello("John")


# def is_negative(num)
#   if num < 0
#     return true
#   else
#     return false
#   end
# end

# puts is_negative(1)


# def square(num)
#   return num ** 2
# end

# square(9)


# ////////////////////BLOCKS////////////////////
# def test
#   yield
# end

# test { puts "Hello World" }


# def test
#   puts "You are in the method"
#   yield
#   puts "You are again back to the method"
#   yield
# end

# test { puts "You are in the block" }


# def test
#   yield "This is a block parameter"
#   yield 1
# end

# test { |i| puts "You are in the block #{i}" }


# def test
#   yield 1, 100
# end

# test { |i, j| puts "You are in the block #{i} #{j}" }


# BEGIN{
#   puts "This is the beginning"
# }

# END{
#   puts "This is the end"
# }

# puts "This is the main program"


# ////////////////////METHOD ARGUMENTS////////////////////
# def printer(val)
#   puts val
# end

# printer("Test")


# def person(name, age)
#   puts "Name: #{name}"
#   puts "Age: #{age}"
# end

# person("John", 25) #Parameters are positional so we need to be pass them in the correct order


# def person(name:, age:)
#   puts "Name: #{name}"
#   puts "Age: #{age}"
# end

# person(name: "John", age: 25) #Using keywords we can pass them in any order


# def hello(*names)
#   names.each {|name| puts name}
# end

# hello "John", "Jane", "Doe"


# def test(&block)
#   block.call
# end

# test { puts "Hello World" }


# ////////////////////LAMBDA FUNCTIONS////////////////////
# puts lambda { |x| x*x }
# puts lambda {|x| x*x}.call(2)
# lambda {|x| puts x*x}.call(2)
# puts ->(x) { x*x }.call(2)


# square = ->(x) { x*x }
# puts square.call(2)


# square = lambda do
#   |x| x*x
# end

# puts square.call(2)


# ////////////////////RECURSIVE FUNCTIONS////////////////////
# def calculate(number)
#   if number == 0
#     return 0
#   else
#     return number + calculate(number-1)
#   end
# end

# puts calculate(57)


# def calculate(number)
#   return 0 if number.zero?
#   number + calculate(number-1)
# end

# puts calculate(57)
