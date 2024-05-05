class EnemyClass
    attr_reader :name, :weapon, :weapon_damage
    attr_accessor :health
  
    def initialize(name)
      @name = name
      @health = 50  
      @weapon, @weapon_damage = select_random_weapon
    end
  
    def select_random_weapon
        weapons = {
            "sword" => 1,
        }
      weapon = weapons.keys.sample 
      [weapon, weapons[weapon]]  
    end

    def attack(player)
        miss_chance = [1, 2, 3, 4, 5].sample 
        sleep(1)
        if miss_chance == 3 
            puts "#{@name} missed!"
            return 0
        else 
            player.health -= @weapon_damage
            puts "#{@name} attacked you with a #{@weapon}, hitting you on the #{player_body_part_selector} for #{@weapon_damage} damage!"
        end 
    end 

    def block(player)
      miss_chance = [1, 2, 3, 4, 5].sample 
      sleep(1)
      if miss_chance == 3 
          puts "You failed to block! #{@weapon_damage} damage!"
          enemy.health -= @weapon_damage
      else 
          puts "#{@name} attacked you with a #{@weapon}, but you succesfully blocked it for 0 damage!"
          return 0
      end        
  end

    def enemy_status 
        puts "#{@name} - health: #{@health} - weapon: #{@weapon}"
    end 

    def player_body_part_selector
        body_parts = ["head", "torso", "arm", "leg", "hand", "foot", "nose", "ear", "eyebrow", "belly button", "funny bone", "backside"]
        body_parts.sample
    end 
  end