require 'sinatra/base'
require './lib/player'

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
    $player1.attack($player2)
    redirect '/play'
  end

  get '/play' do
    @player2_hp = $player2.hitpoints
    @player1_hp = $player1.hitpoints
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_attacks = session[:player1_attacks]
    erb :play
  end

  run! if app_file == $0

end
