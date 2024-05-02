class Router
    def initialize(controller)
      @controller = controller
      @running = true
    end
  
    def run
      puts "BATTLE-ADVENTURE!!!"
      puts "*" * 20
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
      when 1 then @controller.something
      when 2 then @controller.something
      when 3 then @controller.something
      when 4 then stop
      end
    end
  
    def stop
      @running = false
    end
  
    def display_tasks
      puts "What do you want to do next?"
      puts "1 - Look for trouble"
      puts "2 - Sleep until tomorrow..."
      puts "3 - Check Inventory"
      puts "4 - Search for resources"
      puts "5 - Save and Quit"
    end
  end
  