# # we can use module to organize our code using composition rather than inheritence

# module ModuleA
#   def dummy
#     puts "Dummy from ModuleA"
#   end
# end

# module ModuleB
#   def dummy
#     puts "Dummy from ModuleB"
#   end
# end

# class Worker
# include ModuleA
# include ModuleB
#   def run
#     dummy()
#   end
# end

# p Worker.ancestors

# w = Worker.new
# w.run



# # Define a module named WorkerDebugger
# module WorkerDebugger
#   # Define a method named run that takes params as an argument
#   def run(params)
#     # Print a message indicating that the method is running with the given params
#     puts "Running with params: #{params.inspect}"

#     # Call the original run method (super) of the class that includes this module
#     result = super

#     # Print a message indicating that the method has completed, along with the result
#     puts "Completed: #{result}"
#   end
# end

# # Define a class named Worker
# class Worker
#   # Use the `prepend` keyword to include the WorkerDebugger module, and it will take precedence
#   prepend WorkerDebugger

#   # Define a method named run that takes params as an argument
#   def run(params)
#     # Print a message indicating that the method is working on the given params
#     puts "Working on params: #{params.inspect}"

#     # Use the map method to square each element of the params array
#     params.map { |i| i ** 2 }
#   end
# end

# # Print the ancestors of the Worker class, which includes the module WorkerDebugger
# p Worker.ancestors

# # Create an instance of the Worker class
# w = Worker.new

# # Call the run method on the instance with an array [1, 3, 5]
# w.run([1, 3, 5])


# Define a module named ModuleA
module ModuleA
  # Define a class method named method1 on the ModuleA module
  def self.method1
    puts "method1: class Module"
  end

  # Define an instance method named method2 on the ModuleA module
  def method2
    puts "method2: instance Module"
  end
end

# Define a class named Test
class Test
end

# *  Note that using Object as a variable name is not recommended because it is a predefined Ruby class, but for the purpose of this example, it is used.
# Create an object named Object as an instance of the Test class
Object = Test.new

# Use the `extend` keyword to extend the Object instance with the methods from ModuleA
Object.extend ModuleA

# Call the instance method method2 on the Object instance
Object.method2
