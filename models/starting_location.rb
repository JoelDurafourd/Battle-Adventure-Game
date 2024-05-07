require_relative 'location_class.rb'
require_relative 'chicken.rb'

class StartingLocation < Location
    def initialize(controller)
      @location_name = "clearing"
      @controller = controller
      @running = true
    end
  
    def run
      puts "You wake up in a #{@location_name}."
      puts "Wearing nothing but tattered rags and only your fists for protection..."
      puts "You set about to survive, determined to live on despite your circumstances..."
      puts "*" * 20
      @controller.death_check(@player_character)
      @controller.status
  
      while @running
        @controller.death_check(@player_character)
        display_tasks
        action = gets.chomp.to_i
        print `clear`
        route_action(action)
        
      end
    end

    def display_tasks
      @controller.death_check(@player_character)
      puts "What do you want to do next?"
      puts "1 - Look for trouble"
      puts "2 - Camp until tomorrow..."
      puts "3 - Check Inventory"
      puts "4 - Search for resources"
      puts "5 - Travel to a new location"
      puts "6 - Save and Quit"
    end

    def enemies_available
      [Goblin, Chicken].sample
    end 
  end
  