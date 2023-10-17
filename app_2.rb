require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'




puts "Bienvenue sur le jeu de POOOOOO le Batard!"
puts "Le but du jeu et de tous les fumer"


player = []

player1 = HumanPlayer.new("Gustavo")

player2 = Player.new("Josiane")
player3 = Player.new("José")

while player1.life_points > 0 && player2.life_points > 0 && player3.life_points > 0 
    puts "Voici l'etat de chaque joueur : #{player1.name}, #{player1.show_state} #{player2.name}, #{player2.show_state}"
    break if player1.life_points <= 0 || player2.life_points <= 0 && player3.life_points <= 0
    player1.attacks(player2)
    player2.attacks(player1)
    player3.attacks(player1) 
end
if player1.life_points <= 0 || player2.life_points <= 0 && player3.life_points <= 0
    puts "Le joueur #{player1.name} a gagné"
else 
    puts "Le joueur #{player1.name} c'est fait défoncer"

end    


binding.pry