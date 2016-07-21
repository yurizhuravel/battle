class Game

attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack
    @players[1].receive_damage
    change_turn
  end

  def change_turn
    @players.rotate!
  end

  def whos_turn
    @players[0]
  end

end
