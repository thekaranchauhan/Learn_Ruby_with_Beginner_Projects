# weather.rb
require 'httparty'

class Weather
  include HTTParty
  base_uri 'http://api.openweathermap.org/data/2.5'

  def self.get_weather(city, api_key)
    response = get("/weather?q=#{city}&appid=#{api_key}&units=metric")

    if response.success?
      current_temperature = response.parsed_response['main']['temp']

      forecast_response = get("/forecast?q=#{city}&appid=#{api_key}&units=metric")
      forecast_data = parse_forecast(forecast_response)

      [current_temperature, forecast_data]
    else
      nil
    end
  end

  private

  def self.parse_forecast(response)
    forecast_data = []

    if response.success?
      response.parsed_response['list'].each do |forecast|
        timestamp = Time.at(forecast['dt'])
        temperature = forecast['main']['temp']

        forecast_data << { timestamp: timestamp, temperature: temperature }
      end
    end

    forecast_data
  end
end
