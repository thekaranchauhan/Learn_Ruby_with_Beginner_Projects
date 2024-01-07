require 'httparty'

class Weather
  include HTTParty
  base_uri 'http://api.openweathermap.org/data/2.5'

  # Fetches weather data for the specified city using the OpenWeatherMap API
  def self.get_weather(city, api_key)
    response = get("/weather?q=#{city}&appid=#{api_key}&units=metric")

    if response.success?
      # Extract the current temperature from the API response
      current_temperature = response.parsed_response['main']['temp']

      # Fetch the forecast data for the next 7 days
      forecast_response = get("/forecast?q=#{city}&appid=#{api_key}&units=metric")
      forecast_data = parse_forecast(forecast_response)

      [current_temperature, forecast_data]
    else
      nil  # Return nil if the API request is not successful
    end
  end

  private

  # Parses the forecast data from the API response
  def self.parse_forecast(response)
    forecast_data = []

    if response.success?
      # Iterate through the forecast data and extract timestamp and temperature
      response.parsed_response['list'].each do |forecast|
        timestamp = Time.at(forecast['dt'])
        temperature = forecast['main']['temp']

        forecast_data << { timestamp: timestamp, temperature: temperature }
      end
    end

    forecast_data
  end
end
