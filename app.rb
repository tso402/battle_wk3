require "sinatra"
require "./lib/player"
require "./lib/game"

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:name_one], params[:name_two])
    redirect('/play')
  end

  get '/play' do
    @player_one = $game.player_one
    @player_two = $game.player_two
    erb(:play)
  end

  get '/attack' do
    $game.attack
    @player = $game.turn
    erb :attack
  end

  get '/end' do
    erb :end
  end

run! if app_file == $0
end
