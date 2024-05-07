class HealthPotion < Item 

    def initialize(player_character)
        @player_character = player_character
        @item_name = "health potion"
        @effect = "player health + 10"
        @price = 5
    end 

    def use 
        player_character.health += 10
    end 

end 