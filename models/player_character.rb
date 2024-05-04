class PlayerCharacter 
    attr_reader :name, :hunger, :weapon, :weapon_damage, :alive
    attr_accessor :health

    def initialize(attributes = {})
        @name = attributes[:name] || "Player Character" 
        @health = attributes[:health].to_i || 100
        @hunger = attributes[:hunger].to_i || 100
        @alive = alive?
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
            puts "You struck #{enemy.name} on the #{enemy_body_part_selector} with your #{@weapon} for #{@weapon_damage} damage!"
        end        
    end 

    def enemy_body_part_selector
        body_parts = ["head", "torso", "arm", "leg", "hand", "foot", "nose", "ear", "eyebrow", "belly button", "funny bone", "backside"]
        body_parts.sample
    end 

    def alive? 
        if @health <= 0
            false 
        elsif @hunger <= 0
            false 
        else 
            true 
        end 
    end 
end 