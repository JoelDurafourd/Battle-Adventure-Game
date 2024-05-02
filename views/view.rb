class View 
    def status_report(player_character)
        puts "#{player_character.name} - health: #{player_character.health} - hunger: #{player_character.hunger} - weapon: #{@weapon}"
    end 

    def death_sequence 
        puts "Oh no! You're dead! Please start a new Character to continue the adventure!"
    end 
end 