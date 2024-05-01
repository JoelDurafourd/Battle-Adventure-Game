class Router
    def initialize(controller)
      @meals_controller = controller
      @running = true
    end
  
    def run
      puts "BATTLE-ADVENTURE!!!"
      puts "*" * 20
  
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
      when 1 then @meals_controller.list
      when 2 then @customer_controller.list
      when 3 then @meals_controller.add
      when 4 then @customer_controller.add
      when 5 then @meals_controller.edit
      when 6 then @customer_controller.edit
      when 8 then @customer_controller.remove
      when 9 then stop
      end
    end
  
    def stop
      @running = false
    end
  
    def display_tasks
      puts "What do you want to do next?"
      puts "1 - List all meals"
      puts "2 - List all customers"
      puts "3 - Add a new meal"
      puts "4 - Add a new customer"
      puts "5 - Edit a meal"
      puts "6 - Edit a customer"
      puts "7 - Remove a meal"
      puts "8 - Remove a customer"
      puts "9 - Stop and exit the program"
    end
  end
  