require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end


  post '/player1_attacks' do
    session[:player1_attacks] = true
    Game.new.attack($player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    @player1_attacks = session[:player1_attacks]
    erb :play
  end

  run! if app_file == $0

end
