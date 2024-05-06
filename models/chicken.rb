require_relative '../models/enemy_class.rb'

class Chicken < EnemyClass
    attr_reader :name, :weapon, :weapon_damage
    attr_accessor :health
  
    def initialize(name = "Chicken")
      @name = name
      @health = 10
      @weapon, @weapon_damage = select_random_weapon
    end
  
    def select_random_weapon
        weapons = {
            "Beak" => 2,
            "Claws" => 1,
        }
      weapon = weapons.keys.sample  
      [weapon, weapons[weapon]]  
    end

  end