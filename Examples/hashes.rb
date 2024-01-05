person = {name: 'Bob', lastname: 'Doe', city: 'london'}

# for key, value in person
#   puts "#{key} => #{value}"
# end


# print person.keys
# print person.values


i = 0
while i < person.keys.length
  puts "#{person.keys[i]} => #{person.values[i]}"
  i += 1
end
