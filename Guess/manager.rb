require_relative './game'

class GameManager
  def initialize
    @game = Game.new
  end

  def start_game
    puts "\e[46mWelcome to the Number Guessing Game!\e[0m"
    play_round until game_over?
    display_result
  end

  private

  def play_round
    puts "\n\e[32mGuess the number (between 1 and 100) or enter -1 to end the game:\e[0m"
    player_guess = gets.chomp.to_i

    if player_guess == -1
      puts "\e[46mEnding the game. Thanks for playing!\e[0m"
      exit  # This will terminate the program
    end

    case @game.guess(player_guess)
    when :correct
      puts "Congratulations! You guessed the number in \e[33m#{@game.attempts + 1}\e[0m attempts."
    when :low
      puts "\e[31mLow! Try again.\e[0m"
    when :high
      puts "\e[31mHigh! Try again.\e[0m"
    end
  end

  def game_over?
    @game.guess(@game.secret_number) != :correct
  end

  def display_result
    puts "\e[32mGame over. Thanks for playing!\e[0m"
  end
end
