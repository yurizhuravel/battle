require_relative 'player'

class Game
  attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_turn(current_turn)
    if @players.index(current_turn) < (@players.length) -1
      @current_turn = @players[@players.index(current_turn) + 1]
    else
      @current_turn = @players[0]
    end
  end

  def attack(player)
    player.receive_damage
  end

end
