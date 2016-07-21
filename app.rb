require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/attack' do
    @game = Game.instance
    @game.attack
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = Game.instance
    erb(:attack)
  end

  post '/change_turn' do
    Game.instance.change_turn
    redirect '/play'
  end

  get '/game_over' do
    @game = Game.instance
    erb(:game_over)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
