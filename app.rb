require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:name1])
    @player_2 = Player.new(params[:name2])
    $game = Game.new(@player_1,@player_2)
    redirect to('/play')
  end

  get '/play' do
    @name1 = $game.player_1.name
    @name2 = $game.player_2.name
    @hp1 = $game.player_1.hp
    @hp2 = $game.player_2.hp
    erb :play
  end

  get '/attack' do
    @attacked_player = params[:name]
    @player1 = $game.player_1
    @player2 = $game.player_2
    if @attacked_player == @player1.name
      $game.attack(@player1)
    else $game.attack(@player2)
    end
    erb :attack
  end
end
