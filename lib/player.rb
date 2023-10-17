class Player 
  attr_accessor :name, :life_points

  def initialize(player_name)
    @life_points = 10
    @name = player_name
  end

  def show_state
    "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage_received)
    @life_points -= damage_received
    if @life_points <= 0
      puts "#{@name} a été tué"
    else
      
    end
  end

  def compute_damage
    rand(1..10)
  end

  def attacks(player_to_attack)
    damage = compute_damage
    puts "#{@name} attaque #{player_to_attack.name}"
    if damage > 0
      player_to_attack.gets_damage(damage)
      puts "Il lui inflige #{damage} de dégâts"
    end
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level

 
  def initialize(player_name)
    @weapon_level = 1
    @life_points = 100
    super(player_name)
  end

  def show_state
    "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level.to_s}"
  end

  def compute_damage
    rand(1..10) * @weapon_level
  end

  def search_weapon (weapon_sec)
    weapon_sec =  rand(1..10)
    puts "#{@name} a trouvé une arme de niveau #{@weapon_level}"
    if weapon_sec > @weapon_level 
      @weapon_level = weapon_sec
      puts "MAMA t'es gaver c'est un monstre celle la"
    else
      weapon_sec <= @weapon_level
       
      puts "Baahhh d'la merde on garde celle la"
    end
  end

  def search_health_pack (health_pack_sec)
     health_pack_sec = rand(1..10) 
    case health_pack_sec
    when 1 
      puts "y'a rien pour toi le sang"
    when 2..5
      @life_points += 50
      puts "gaver frero 50 point de heal pour toi"
      if @life_points > 100
        @life_points = 100
      end
    when 6..10
      @life_points += 80
      puts "gaver frero 80 point de heal pour toi" 
      if @life_points > 100
        @life_points = 100
      end
    end
  end
end   