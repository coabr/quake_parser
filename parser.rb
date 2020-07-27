require_relative 'game.rb'
require 'json'


# To avoid some issues, we should put those values in constants for ease/better visualization
GAMESTART_TOKEN = "InitGame"
PLAYERINFO_TOKEN = "ClientUserinfoChanged"
KILL_TOKEN = "Kill"
GAMESLOG_TOKEN = "games.log"

def all_games
    # Separate games
    file = File.read(GAMESLOG_TOKEN) # this will retun a string
    arr_of_games = file.split(GAMESTART_TOKEN) #this will return an array of strings, and every item of the array (wich is a string) will start when "InitGame" occurs
    #puts file -> to check if its reading correctly

    game_number = 0 # before the game start, the game number is equal to zero 

    games = [] # to store every game
    #separate each game by lines
    arr_of_games.each do |game_string|
        game_lines = game_string.split("\n")
        game = Game.new(game_number) # initialize an object of the class
        game_number += 1
        game_lines.each do |line|
            #puts game.number -> to check if its getting the game number
            if line.match?(PLAYERINFO_TOKEN) 
                arr_with_user_name = line.split("\\")
                game.players << arr_with_user_name[1]
                # puts game.players -> to check if its getting the players name
                game.players.uniq!
            elsif line.match?(KILL_TOKEN)
                arr_with_kill = line.split(" ")
                killer = arr_with_kill[5]
                #puts ("this is game #{game_number} and the killer is #{killer}")
                killed = arr_with_kill[7]
                #puts ("this game killed is #{killed}")
                game.kill(killer,killed)
            end
        end
        puts "game_#{game.number.to_json}: #{game.summary.to_json}" 
        games << game.summary
    end
games
end
