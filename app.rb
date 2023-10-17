require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


    

player1 = Player.new("Josiane")
player2 = Player.new("José")

while player1.life_points > 0 && player2.life_points > 0 
        puts "Voici l'etat de chaque joueur : #{player1.name}, #{player1.show_state} #{player2.name}, #{player2.show_state}"
        break if player1.life_points == 0 || player2.life_points ==
        player2.attacks(player1)
        player1.attacks(player2)

     end






binding.pry