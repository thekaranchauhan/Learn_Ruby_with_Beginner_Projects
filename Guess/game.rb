class Game
  attr_accessor :secret_number, :attempts

  def initialize
    @secret_number, @attempts = rand(1..100), 0
  end

  def guess(player_guess)
    if player_guess == @secret_number
      :correct
    else
      # Increment attempts and provide feedback based on the guess
      @attempts += 1
      player_guess < @secret_number ? :low : :high
    end
  end
end
