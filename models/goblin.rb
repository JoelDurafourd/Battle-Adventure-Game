class Goblin
    attr_reader :name, :health, :weapon, :weapon_damage
  
    def initialize(name = "Goblin")
      @name = name
      @health = 50  # Example health value
      @weapon, @weapon_damage = select_random_weapon
    end
  
    private
  
    def select_random_weapon
        weapons = {
            "Attack-Chicken" => 1,
            "Iron Dagger" => 3,
            "Squeaky Mace" => 1,
            "A gauntlet with a hand in it" => 2,
            "Tickle Feather" => 1
        }
      weapon = weapons.keys.sample  # Randomly selects a weapon
      [weapon, weapons[weapon]]  # Returns an array with the weapon and its damage
    end
  end