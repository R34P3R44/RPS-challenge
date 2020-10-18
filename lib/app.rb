require 'sinatra'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get "/" do
    erb(:index)
  end

  post '/players-reg' do
    erb(:players_reg)
    #redirect '/play'
  end

  get '/play' do

  end
end




#run! if app_file == $0
