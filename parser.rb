class Game
    attr_accessor :number, :players, :kills

    #the Game class need to be responsible for those things
    def initialize(game_number)
        @number = game_number
        @players = []
        @kills = Hash.new
    end

    #use methods to give you the answers you need
    #def get_players (name)
    #end
end

#separa os jogos
file = File.read("games.log") # retorna um string
arr_of_games = file.split("InitGame")
#puts file
game_number = 0

#separa cada jogo por linhas
arr_of_games.each do |game_string|
    game_lines = game_string.split("\n")
    game_number += 1
    game = Game.new(game_number) #Inicializa um objeto da classe Game
    game_lines.each do |line|
        if line.match?("ClientUserinfoChanged") 
            arr_of_client_line = line.split("\\")
            game.players << arr_of_client_line[1]
            puts game.players #test to check if its getting the players name
            puts game.number #test to check if its getting the game number
        end
    end
end


