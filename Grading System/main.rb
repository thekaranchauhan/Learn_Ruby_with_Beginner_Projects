print "Enter your grade: "
grade = gets.chomp.to_i

result = case grade
when 90..100 then "A"
when 80..89 then "B"
when 70..79 then "C"
when 60..69 then "D"
when 50..59 then "E"
when 0..49 then "F"
else "Invalid input"
end

puts result
