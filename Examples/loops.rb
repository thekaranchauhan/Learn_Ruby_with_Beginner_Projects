# i = 0
# while i < 5
#   puts i
#   i += 1
# end

# i = -1
# puts "#{i += 1}" while i < 4


# i = 0
# until i > 5
#   puts i
#   i += 1
# end

# i = -1
# puts "#{i += 1}" until i > 4


# for i in ["a", "b", "c"] do
#   puts i
# end


# (1..5).each { |i| puts i}


# i = 0
# begin
#   puts i
#   i += 1
# end while i < 5


# i = 0
# while i < 5

#   if i == 3
#     break
#   end

#   puts i
#   i += 1
# end


# i = 0
# while i < 5
#   i += 1
#   if i == 3
#   next
# end
#   puts i
# end


loop do
  puts "Enter a number"
  number = gets.chomp.to_i
  if number > 50
    puts "Break!"
    break
  end
end
