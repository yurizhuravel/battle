class Game

attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def attack
    @players[1].receive_damage
  end

  def change_turn
    @players.rotate!
  end

  def whos_turn
    @players[0]
  end

  def opponent
    @players[1]
  end

  def game_over?
    losing_players.any?
  end

  def winner
    winner = @players - losing_players
    winner[0]
  end

  private

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end

end
