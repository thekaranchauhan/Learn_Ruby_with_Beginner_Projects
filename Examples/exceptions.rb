# a = 5
# puts "before exception"
# raise "exception raised" if a  > 5
# end
# puts "after exception"


# begin
#   puts "Processing..."
#   raise "exception raised"
# rescue
#   puts "exception handelling"
# end

# begin
#   puts "Processing..."
#   raise "exception raised"
# rescue Exception => e
#   puts "exception handelling"
# end


# begin
#   puts "Processing..."
#   raise NameError,  "custom error message"
# rescue Exception => e
#   puts e.message
# end


# begin
#   puts "Before exception"
#   a = 5/0
#   puts "After exception"
# rescue Exception => e
#   puts "#{e.class} #{e.message}"
# end


# begin
#   puts "Before exception"
#   a = 5/0
#   puts "After exception"
# rescue Exception => e
#   puts "#{e.class} #{e.message}"
#   puts e.backtrace.inspect
# end
