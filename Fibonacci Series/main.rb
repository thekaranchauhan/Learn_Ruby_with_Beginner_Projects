# Fibonnaci Numbers

print "Enter a number: "
number = gets.chomp.to_i

fibonacciPrevious = 0
fibonacciCurrent = 1

# while fibonacciCurrent <= number
#   puts fibonacciCurrent
#   temp = fibonacciCurrent
#   fibonacciCurrent += fibonacciPrevious
#   fibonacciPrevious = temp
# end


while fibonacciCurrent <= number
  puts fibonacciCurrent
  fibonacciPrevious, fibonacciCurrent = fibonacciCurrent, fibonacciCurrent + fibonacciPrevious
end
