Class Game
    attr_accessor :number, :players, :kills

    def initialize(game_number)
        @number = game_number
        @players = []
        @kills = Hash.new
    end
end


file = File.read("games.log")
# .each do | line |

array = file.split("InitGame")
#puts array.length to check games quantity in the log file

#first try to group games content
array.each do | line |
    $total_kills = 0
    if line.match?("Kill") #it needs to be a loop 
        $total_kills += 1
    end
    puts $total_kills
end

