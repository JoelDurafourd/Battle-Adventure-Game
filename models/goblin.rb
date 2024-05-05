require_relative '../models/enemy_class.rb'

class Goblin < EnemyClass
    attr_reader :name, :weapon, :weapon_damage
    attr_accessor :health
  
    def initialize(name = "Goblin")
      @name = name
      @health = 50 
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
      weapon = weapons.keys.sample  
      [weapon, weapons[weapon]]  
    end

  end