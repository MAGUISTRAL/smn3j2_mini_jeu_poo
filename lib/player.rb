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
    puts "#{@name} a #{@life_points} points de vie" # say how many points of life you have
  end

  def gets_damage (damage)
      @life_points = @life_points - damage            # calculate life points
        if @life_points < 1
          then puts "le joueur #{name} est trop fatigué!"     # warranty players when dead
        end
  end

  def attacks (player_attacked)
      if @life_points >0 && player_attacked.life_points>0  #verify gamers still alives
        then attacks_damages_points = compute_damage       #calculate the life points lost
        puts "Passons à la phase de corps à corps : Le joueur #{@name} fouette le joueur #{player_attacked.name}"
        puts "il lui inflige #{attacks_damages_points} points de fesses rouges !"
        player_attacked.gets_damage(attacks_damages_points)    #apply method gets_damage = calculate how many life points stayed
        player_attacked.show_state #player attacket keep ** life points
      else "game over ! Tout le monde se rhabille"
      end
  end

  def compute_damage          #random fonction to estimate the number of life points damage
    return rand(1..6)
  end


binding.pry                 #gem pry. debug tool. stop the code where you want to test it.
end

def perform                     #declaration of method. not necessary to run the code.
  initialize
  how_state
  gets_damage (damage)
  attacks (player_attacked)
  compute_damage
end
