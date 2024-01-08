class ApplicationPasswordGenerator
  def self.generate_password(length, include_symbols)
    characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    characters += ['!', '@', '#', '$', '%', '^', '&', '*'] if include_symbols

    password = Array.new(length) { characters.sample }.join
    password
  end
end
