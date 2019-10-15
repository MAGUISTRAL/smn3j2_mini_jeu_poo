require 'rubygems'
require 'pry'

class Player          #paramétrer le compte
  attr_accessor :name, :life_points
  @@all_players=[]

  def initialize (name)      #create user profil with getting name + 10 lifes life_points
    @name = name              #choice name
    @life_points = 10         #begin with 10 life
    @@all_players << self     #save values (name, life_points) in a array
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage)
    @damage = damage
    @life_points = @life_points - @damage
      if @life_points < 1
      then puts "le joueur #{name} est mort"
           puts "le joueur #{name} a 0 points de vie"
      else puts "le joueur #{name} subit 5 points de dommage, il lui reste #{life_points} points de vie"
      end
  end

  def attacks (player_attacked)
      attacks_damages_points = compute_damage
      puts "Passons à la phase d'attaque : Le joueur #{@name} attaque le joueur #{player_attacked.name}"
      puts "il lui inflige #{attacks_damages_points} points de dommages !"
      player_attacked.gets_damages(attacks_damages_points)
  end

  def compute_damage
  return rand(1..6)
end


binding.pry
end

def perform
initialize
how_state
gets_damage(damage)
attacks (player_attacked)
compute_damage
end
