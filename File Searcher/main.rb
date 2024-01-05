puts "Search in Files"

# def search(key)
#   Dir.glob("*.txt") do |filename|
#     f = File.open(filename)
#     f.each_with_index do |line, index|
#       if line.include?(key)
#         return [filename, index + 1]  # Using an array to return multiple values
#       end
#     end
#     f.close
#   end
# end

# print "Key: "
# key = gets.chomp
# filename, linenumber = search(key)  # Corrected variable name here
# puts "File: #{filename} Line Number: #{linenumber}"

# ----------------------------------------------------------------

# Display a message indicating the purpose of the program
puts "Search in Files"

# Define a method to search for a key in text files
def search(key)
  # Use Dir.glob to iterate over each text file in the current directory with a .txt extension
  Dir.glob("*.txt") { |filename|
    # Check if the file exists before attempting to open it
    return [filename, IO.foreach(filename).find_index { |line| line.include?(key) }&.next] if File.file?(filename)
  }
end

# Prompt the user to enter a key
print "Key: "
key = gets.chomp

# Call the search method with the entered key and assign the result to variables
filename, linenumber = search(key)

# Print the result using string interpolation
puts "File: #{filename} Line Number: #{linenumber}"
