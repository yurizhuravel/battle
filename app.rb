require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  post '/attack' do
    $game.attack($game.opponent)
    $game.switch_turn($game.current_turn)
    if $game.player1.hitpoints <= 0 || $game.player2.hitpoints <= 0
      redirect '/game_over'
    else
      redirect '/play'
    end
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  run! if app_file == $0

end
