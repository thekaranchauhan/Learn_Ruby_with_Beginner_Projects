# $LOAD_PATH << '.'
# require 'test_module'

# require "./test_module.rb"

require_relative './test_module'

puts ModuleA::MESSAGE #:: to call a constant from a module
puts ModuleA.square(6)
