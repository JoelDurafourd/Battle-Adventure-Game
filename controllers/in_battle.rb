class InBattle 
    def initialize(controller, player_character, enemy_character)
    @controller = controller
    @player_character = player_character
    @enemy_character = enemy_character
    @running = true 
    @escape_chance = ["safe", "unsafe", "not safe"]
    end 

    def run
        puts "BATTLE!!!!"
        puts "*" * 20
        @controller.death_check(@player_character)
        @controller.status
        @enemy_character.enemy_status
    
        while @running
          display_tasks
          action = gets.chomp.to_i
          print `clear`
          route_action(action)
          battle_ender 
          @controller.death_check(@player_character)
        end
      end
    
      private
    
      def route_action(action)
        case action
        when 1 
          player_attacks 
          enemy_attacks 
        when 2 then
          @enemy_character.block(@player_character)
          @controller.death_check(@player_character)
          @controller.status
        when 3 then @controller.inventory
        when 4 
            if @escape_chance.sample == "safe"
                puts "You escaped!"
                stop
            else 
                puts "You failed to escape!"
                puts "#{@enemy_character.name} attacks you!"
                @enemy_character.attack(@player_character)
                @controller.death_check(@player_character)
                @controller.status
            end 
        end
      end
    
      def stop
        @running = false
      end
    
      def display_tasks
        sleep(1)
        puts "What do you want to do?"
        puts "1 - Attack!"
        puts "2 - Block"
        puts "3 - Item"
        puts "4 - Try to run"
      end

      def battle_ender 
        if @player_character.health <= 0
          stop 
          @controller.death_check(@player_character)
        elsif @enemy_character.health <= 0
          stop
        end 
      end 

      def player_attacks 
        battle_ender 
        if @running == true 
          @controller.death_check(@player_character)
          @player_character.attack(@enemy_character)
          @enemy_character.enemy_status
        end 
      end 

      def enemy_attacks 
        battle_ender 
        if @running == true 
          @enemy_character.attack(@player_character)
          @controller.death_check(@player_character)
          @controller.status
        end 
        enemy_killed_message
      end 
      
      def enemy_killed_message 
          puts "#{@enemy_character.name} has been killed!" if @enemy_character.health <= 0
      end 
end 