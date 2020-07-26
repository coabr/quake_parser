file = File.read("games.log")
# .each do | line |

array = file.split("InitGame")

puts array.length