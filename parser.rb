require_relative 'game.rb'

INITGAME_TOKEN = "InitGame"
CLIENTUSERINFOCHANGED_TOKEN = "ClientUserinfoChanged"
KILL_TOKEN = "Kill"
GAMESLOG_TOKEN = "games.log"


#separate games
file = File.read(GAMESLOG_TOKEN) # this will retun a string
arr_of_games = file.split(INITGAME_TOKEN)
#puts file
game_number = 0

#separate each game by lines
arr_of_games.each do |game_string|
    game_lines = game_string.split("\n")
    game_number += 1
    game = Game.new(game_number) # initialize an object of the class
    game_lines.each do |line|
        if line.match?(CLIENTUSERINFOCHANGED_TOKEN) 
            arr_of_user_line = line.split("\\")
            game.players << arr_of_user_line[1]
            # puts game.players #test to check if its getting the players name
            puts game.number #test to check if its getting the game number
        elsif line.match?(KILL_TOKEN)
            arr_of_kill = line.split(" ")
            killer = arr_of_kill[5]
            killed = arr_of_kill[7]
            game.kill(killer,killed)
        end
    end
end


