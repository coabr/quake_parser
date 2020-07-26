class Game
    attr_accessor :number, :players, :kills

    #the Game class need to be responsible for those things
    def initialize(game_number)
        @number = game_number
        @players = []
        @kills = Hash.new
    end

    #use methods to give you the answers you need
    def kill (killer, killed)
        
    end
end