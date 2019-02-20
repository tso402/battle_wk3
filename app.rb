require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session["init"] = true
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect to('/play')
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:play)
  end

end
