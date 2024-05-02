class Goblin
    attr_reader :name, :weapon, :weapon_damage
    attr_accessor :health
  
    def initialize(name = "Goblin")
      @name = name
      @health = 50  # Example health value
      @weapon, @weapon_damage = select_random_weapon
    end
  
    def select_random_weapon
        weapons = {
            "Attack-Chicken" => 1,
            "Iron Dagger" => 3,
            "Squeaky Mace" => 1,
            "Gauntlet with a hand in it" => 2,
            "Tickle Feather" => 1
        }
      weapon = weapons.keys.sample  # Randomly selects a weapon
      [weapon, weapons[weapon]]  # Returns an array with the weapon and its damage
    end

    def attack(player)
        miss_chance = [1, 2, 3, 4, 5].sample 
        sleep(1)
        if miss_chance == 3 
            puts "#{@name} missed!"
            return 0
        else 
            player.health -= @weapon_damage
            puts "#{@name} attacked you with a #{@weapon} for #{@weapon_damage} damage!"
        end 
    end 

    def enemy_status 
        puts "#{@name} - health: #{@health} - weapon: #{@weapon}"
    end 
  end