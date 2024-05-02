class PlayerCharacter 
    attr_reader :name, :health, :hunger, :weapon, :weapon_damage
    attr_accessor :alive

    def initialize(attributes = {})
        @alive = true 
        @name = attributes[:name] || "Player Character" 
        @health = attributes[:health] || 100
        @hunger = attributes[:hunger] || 100
        @weapon = attributes[:weapon] || "fists"
        @weapon_damage = attributes[:weapon_damage] || 5
    end 

end 