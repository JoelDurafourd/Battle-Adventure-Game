class InBattle 
    def initialize(controller, player_character, enemy_character)
    @controller = controller
    @player_character = player_character
    @enemy_character = enemy_character
    @running = true 
    @escape_chance = ["safe", "unsafe"]
    end 

    def run
        puts "BATTLE!!!!"
        puts "*" * 20
        @controller.death_check
        @controller.status
    
        while @running
          display_tasks
          action = gets.chomp.to_i
          print `clear`
          route_action(action)
        end
      end
    
      private
    
      def route_action(action)
        case action
        when 1 
            @controller.death_check
            @controller.attack
        when 2 then @controller.block
        when 3 then @controller.inventory
        when 4 
            stop if @escape_chance.sample == "safe"
        end
      end
    
      def stop
        @running = false
      end
    
      def display_tasks
        puts "What do you want to do next?"
        puts "1 - Attack!"
        puts "2 - Block"
        puts "3 - Item"
        puts "4 - Try to run"
      end

end 