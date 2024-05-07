class View 
    def status_report(player_character)
        puts "#{player_character.name} - health: #{player_character.health} - hunger: #{player_character.hunger} - weapon: #{player_character.weapon}"
    end 

    def death_sequence 
        puts "Oh no! You're dead! Please start a new Character to continue the adventure!"
    end 

    def awake_hunger(player_character)
        if player_character.hunger <= 0
            puts "You starved to death!"
        elsif player_character.hunger > 75 
            puts "You awake feeling refreshed and not particularly hungry..."
        elsif player_character.hunger > 35
            puts "You awake feeling tired and hungry..."
        else 
            puts "You awake, groggy and starving... You must find food soon!"
        end 
        status_report(player_character)
    end 
end 