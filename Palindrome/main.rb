puts "Palindrome Checker"

# def is_palindrome(word)
#   if word.length <= 1
#     return true
#   elsif word[0] != word[-1]
#     return false
#   else
#     is_palindrome(word[1, word.length - 2])
#   end
# end

# print "Enter a word: "
# word = gets.chomp
# puts "Is Palindrome? #{is_palindrome(word)}"

# def is_palindrome?(word)
#   return true if word.length <= 1
#   return false if word[0] != word[-1]
#   is_palindrome?(word[1, word.length - 2])
# end


# def is_palindrome?(word)
#   word == word.reverse
# end

print "Enter a word: "
word = gets.chomp
puts "Is Palindrome? #{is_palindrome?(word)}"
