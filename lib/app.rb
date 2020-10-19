require 'sinatra/base'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get "/" do
    erb(:index)
  end

  post '/players-reg' do
    session[:player] = params[:Player]
    session[:bot] = params[:Bot]
    puts params
    erb(:players_reg)
    #redirect '/play'
  end

  post '/play' do
    @player = session[:player]
    @bot = session[:bot]
    erb :play
  end
end

  # puts "Player 1 turn"
  # p1 = gets.chomp
  # puts "Player 2 turn"
  # p2 = gets.chomp

  # if p1 == "scissors" && bot == "paper"
  #   puts "Player 1 wins"
  # elsif p1 == "rock" && bot == "scissors"
  #   puts "Player 1 wins"
  # elsif p1 == "paper" && bot == "rock"
  #   puts "Player 1 wins"
  # elsif p1 == bot
  #   puts "It's a draw"
  # else
  #   puts "bot wins"





#run! if app_file == $0
