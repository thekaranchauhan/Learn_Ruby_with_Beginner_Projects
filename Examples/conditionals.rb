a = 5
b = 4

# if a > b
#   puts "a is greater than b"
# end


# if a < b
#   puts "a is less than b"
# else
#   puts "a is greater than b"
# end


# if a <= b
#   puts "#{a} is less than or equal to #{b}"
# elsif a >= b
#   puts "#{a} is greater than or equal to #{b}"
# end


# if a <= b
#   puts "#{a} is less than or equal to #{b}"
# elsif a!=b
#   puts "#{a} is not equal to #{b}"
# elsif a >= b
#   puts "#{a} is greater than or equal to #{b}"
# end


# if a > 10
#   puts "#{a} is greater than 10"
# elsif b < 2
#   puts "#{b} is less than 2"
# else
#   puts "else statement"
# end


# if a > b && b > 0
#   puts "#{a} is greater than #{b} and #{b} is greater than 0"
# end


# if a > b || b > 0
#   puts "#{a} is greater than #{b} or #{b} is greater than 0"
# end


# puts "a is greater than b" if a > b


# message = if a > b
#   "a is greater than b"
# elsif a < b
#   "a is less than b"
# else
#   "a is equal to b"
# end
# puts message


# /////////////////////////UNLESS/////////////////////////
is_online = true

# unless is_online
#   puts "maintainance mode"
# end


# page = unless is_online
#   "maintainance mode"
# else
#   "online"
# end
# puts page


# page = is_online ? "homepage" : "maintainance mode"
# puts page


# puts "maintainance mode" unless is_online


# unless is_online then puts "maintainance mode" end


# unless is_online then puts "maintainance mode" end else puts "homepage" end


# if is_online then puts "homepage" end


# /////////////////////////CASE/////////////////////////
number = 1

# case
# when number == 0
#   puts "number is 0"
# when number == 1
#   puts "number is 1"
# else
#   puts "number is not 0 or 1"
# end


# result = case
# when number == 0
#   "number is 0"
# when number == 1
#   "number is 1"
# else
#   "number is not 0 or 1"
# end
# puts result


# result = case
# when number == 0 then "number is 0"
# when number == 1 then "number is 1"
# else "0"
# end
# puts result


waist = 38

case waist
when 29..31
  puts "small"
when 32..34
  puts "medium"
when 35..38
  puts "large"
else
  puts "extra large"
end
