require 'sinatra'
require_relative 'parser'

games = all_games #calls the all_games function

get '/game' do
  content_type :json #format the file for better visualization
  id = params[:id].to_i 
  games[id].to_json #convert the array to json
end