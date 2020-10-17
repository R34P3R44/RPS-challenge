require 'sinatra'

class RockPaperScissors < Sinatra::Base
  get "/" do
    'Welcome to Rock Paper Scissors game.'
  end
  run! if app_file == $0
end
