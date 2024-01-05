array = [
  ["foo", "bar", "wanted", "test"],
  ["1", "2", "3", "4"],
  ["a", "b", "c", "d"],
]

# counter = 0
# search = nil
# catch(:found) do
# array.each do |row|
#     row.each do |item|
#       counter += 1
#       if item == "wanted"
#         search = item
#         throw(:found)
#       end
#     end
#   end
# end


# counter = 0
# search = nil
# search = catch(:found) do
# array.each do |row|
#     row.each do |item|
#       counter += 1
#       if item == "wanted"
#         throw(:found, item)
#       end
#     end
#   end
# end


counter = 0
search = nil
search = catch(:found) do
array.each do |row|
    row.each do |item|
      counter += 1
        throw(:found, item) if item == "wanted"
    end
  end
end

puts "Counter: #{counter}"
puts "Search: #{search}"
