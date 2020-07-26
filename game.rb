class Game
    attr_accessor :number, :players, :kills

    # the Game class need to be responsible for those things
    def initialize(game_number)
        @number = game_number
        @players = []
        @kills = Hash.new
    end

    # use methods to give you the answers you need
    def kill (killer, killed)
        @kills[killed] -= 1 if killer == "<world>"
        @kills[killer] += 1
    end

    def summary # a method to include the rules about world and kills
        kills_without_world = kills.dup #need to duplicate to use ahead in the total kills
        kills_without_world.delete("<world>") #removes all occurencies of "<world>" from kills hash
        total_kills = kills_without_world.values.sum # returns the total number of kills in a game
    end
end