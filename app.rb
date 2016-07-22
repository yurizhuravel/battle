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
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

    post '/attack' do
      @game.attack(@game.opponent)
      @game.switch_turn(@game.current_turn)
      if @game.game_over?
        redirect '/game_over'
      else
        redirect '/play'
      end
    end

    get '/play' do
      erb :play
    end

    get '/game_over' do
      erb :game_over
    end

  run! if app_file == $0

end
