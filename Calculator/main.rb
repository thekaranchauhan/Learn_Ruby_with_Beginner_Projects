add = lambda do |num1, num2|
  num1 + num2
end

subtract = lambda do |num1, num2|
  num1 - num2
end

multiply = lambda do |num1, num2|
  num1 * num2
end

divide = lambda do |num1, num2|
  num1 / num2
end

def manager(operation)
  print "Enter the first number: "
  num1 = gets.chomp.to_f

  print "Enter the second number: "
  num2 = gets.chomp.to_f

  result = operation.call(num1, num2)
  puts "Result: #{result}".center(50, "`")
end

begin
  puts "Calculator"

  puts "a) Addition"
  puts "b) Subtraction"
  puts "c) Multiplication"
  puts "d) Division"
  puts "q) Quit"

  print "Select (a/b/c/d/q): "
  choice = gets.chomp.downcase

  case choice
  when 'a' then manager(add)
  when 'b' then manager(subtract)
  when 'c' then manager(multiply)
  when 'd' then manager(divide)
  when 'q' then puts "Exiting calculator. Goodbye!"
  else
    puts "Invalid choice. Please select a valid option."
  end

end while choice != 'q'
