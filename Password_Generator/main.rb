require_relative 'application'

def generate_password(generator, length, include_symbols)
  generator.generate_password(length, include_symbols)
end

app_password = generate_password(ApplicationPasswordGenerator, 12, true)
puts "Application Password: #{app_password}"
