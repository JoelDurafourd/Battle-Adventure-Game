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
            "Attack-Chicken" => 10,
            "Iron Dagger" => 30,
            "Squeaky Mace" => 10,
            "Gauntlet with a hand in it" => 20,
            "Tickle Feather" => 10
        }
      weapon = weapons.keys.sample  
      [weapon, weapons[weapon]]  
    end

  end