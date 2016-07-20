require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end


  post '/player1_attacks' do
    session[:player1_attacks] = true
    $game.attack($game.player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player1_attacks = session[:player1_attacks]
    erb :play
  end

  run! if app_file == $0

end
