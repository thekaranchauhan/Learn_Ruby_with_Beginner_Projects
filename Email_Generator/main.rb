puts "Company Email Generator"

print "Name: "
name = gets.chomp

print "Last name: "
last_name = gets.chomp

print "Company: "
company = gets.chomp

# Generate email
email = "#{name.split.join(".")}.#{last_name.split.join(".")}@#{company.split.join}"

puts email.downcase
