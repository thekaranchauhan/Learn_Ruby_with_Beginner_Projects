require_relative './manager'

class Application
  def run
    puts "\e[36mWelcome to the Movie Recommendation System!\e[0m"
    puts "\e[34mPlease enter the genre you are interested in:\e[0m"

    genre = gets.chomp.downcase

    manager = Manager.new
    movies = manager.get_recommendations(genre)

    puts "\n\e[31mTop 10 Movies in #{genre.capitalize} Genre:\e[0m"
    movies.each do |movie|
      puts "\e[33m#{movie['title']} (#{movie['release_date']&.split('-')&.first})\e[0m"
    end
  end
end
