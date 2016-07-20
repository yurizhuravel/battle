require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end


  post '/player1_attacks' do
    session[:player1_attacks] = true
    redirect '/play'
  end

  get '/play' do
    @player2_hp = 100
    @player1_hp = 100
    @player1 = session[:player_1_name]
    @player2 = session[:player_2_name]
    @player1_attacks = session[:player1_attacks]
    erb :play
  end

  run! if app_file == $0

end
