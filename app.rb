require 'sinatra/base'
require './lib/player'

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
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb :attack
  end
end
