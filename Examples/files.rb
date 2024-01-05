# f = File.new("test.txt", "w+")
# f.puts"first line of text"
# f.write"second line of text"
# f.write"third line of text"
# f.close


# File.open("test.txt", "r") do |file|
#   puts file.read
# end


f = File.open("test.txt", "r")
# puts f.read
# f.rewind
# puts f.readline


# f.each do |line|
#   puts line
# end


puts File.absolute_path("test.txt")
