require_relative 'location_class.rb'
require_relative '../models/player_character.rb'

class Woods < Location
    def initialize(controller)
      @location_name = "forest"
      @controller = controller
      @running = true
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
      [Orc, Goblin].sample
    end 
  end
  