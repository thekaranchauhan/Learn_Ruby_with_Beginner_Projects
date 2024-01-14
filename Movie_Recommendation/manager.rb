# manager.rb

require 'net/http'
require 'json'

class Manager
  API_KEY = 'YOUR_API_KEY_HERE'
  BASE_URL = 'https://api.themoviedb.org/3'

  def get_recommendations(genre)
    genre_id = get_genre_id(genre)
    return [] unless genre_id

    uri = URI("#{BASE_URL}/discover/movie?api_key=#{API_KEY}&with_genres=#{genre_id}&sort_by=popularity.desc&page=1")
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    data['results'].take(10)
  end

  private

  def get_genre_id(genre)
    uri = URI("#{BASE_URL}/genre/movie/list?api_key=#{API_KEY}")
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    genre_data = data['genres'].find { |g| g['name'].downcase == genre }
    genre_data['id'] if genre_data
  end
end
