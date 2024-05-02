class PlayerCharacter 
    attr_reader :name, :hunger, :weapon, :weapon_damage
    attr_accessor :alive, :health

    def initialize(attributes = {})
        @alive = true 
        @name = attributes[:name] || "Player Character" 
        @health = attributes[:health].to_i || 100
        @hunger = attributes[:hunger].to_i || 100
        @weapon = attributes[:weapon] || "fists"
        @weapon_damage = attributes[:weapon_damage].to_i || 5
    end 

    def attack(enemy)
        miss_chance = [1, 2, 3, 4, 5].sample 
        sleep(1)
        if miss_chance == 3 
            puts "You missed!"
            return 0
        else 
            enemy.health -= @weapon_damage
            puts "You damaged #{enemy.name} with your #{@weapon} for #{@weapon_damage} damage!"
        end 
    end 
end 