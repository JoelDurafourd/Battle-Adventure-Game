require_relative '/controllers/controller.rb'
# require_relative 'app/repositories/meal_repository'
# require_relative 'app/controllers/customers_controller'
# require_relative 'app/repositories/customer_repository'
# require_relative 'router'

csv_player_character = File.join(__dir__, '/data/player_character_data.csv')
item_repository = ItemRepository.new(csv_player_character)
controller = Controller.new(item_repository)

# csv_customers = File.join(__dir__, 'data/customers.csv')
# customer_repository = CustomerRepository.new(csv_customers)
# customer_controller = CustomersController.new(customer_repository)

router = Router.new(controller, customer_controller)

router.run
