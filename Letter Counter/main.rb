puts "Letter Frequency"

def letter_frequency(text)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a
  frequency = {}
  text.each_char do |char|
  if chars.include?(char)
    unless frequency.key?(char)
      frequency[char] = 1
      else
      frequency[char] += 1
    end
  end
end
return frequency
end

print "Enter a text: "
text = gets.chomp
result = letter_frequency(text).sort
  for key, value in result
    puts "#{key} = #{value}"
  end

puts result
