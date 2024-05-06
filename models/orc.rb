require_relative '../models/enemy_class.rb'

class Orc < EnemyClass
    attr_reader :name, :weapon, :weapon_damage
    attr_accessor :health
  
    def initialize(name = "Orc")
      @name = name
      @health = 50 
      @weapon, @weapon_damage = select_random_weapon
    end
  
    def select_random_weapon
      weapons = {
        "Rusted Sword" => 5,
        "Heavy Mace" => 6,
        "Battle Axe" => 7,
        "Warhammer" => 8,
        "Iron Spear" => 9,
        "Broad Axe" => 7,
        "Spiked Club" => 5,
        "Longsword" => 10,
        "Short Dagger" => 6,
        "Halberd" => 8
      }
      weapon = weapons.keys.sample  
      [weapon, weapons[weapon]]  
    end

  end