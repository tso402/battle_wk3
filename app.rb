require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session["init"] = true
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    @hp1 = $player_1.hp
    @hp2 = $player_2.hp
    erb :play
  end

  get '/attack' do
    @attacked_player = params[:name]
    @player1 = $player_1
    @player2 = $player_2
    if @attacked_player == @player1.name
      Game.new.attack(@player1)
    else Game.new.attack(@player2)
    end
    erb :attack
  end
end
