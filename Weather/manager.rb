require_relative './weather'
require_relative './application'

class Manager
  def self.run
    puts 'Welcome to the Weather App!'
    print 'Enter the city name: '
    city = gets.chomp

    weather_data = Weather.get_weather(city, Application.api_key)

    if weather_data
      current_temperature, forecast_data = weather_data

      puts "The current temperature in #{city} is #{current_temperature}°C."

      puts 'Forecast for the next 7 days:'
      forecast_data.each do |forecast|
        puts "#{forecast[:timestamp].strftime('%A, %B %d (%H:%M)')}: #{forecast[:temperature]}°C"
      end
    else
      puts "Unable to fetch weather data for #{city}."
    end
  end
end
