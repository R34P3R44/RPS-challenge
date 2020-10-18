require 'sinatra'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb(:index)
  end
end




#run! if app_file == $0
