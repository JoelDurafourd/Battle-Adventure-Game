# require_relative 'app/controllers/meals_controller'
# require_relative 'app/repositories/meal_repository'
# require_relative 'app/controllers/customers_controller'
# require_relative 'app/repositories/customer_repository'
# require_relative 'router'

# csv_meals = File.join(__dir__, 'data/meals.csv')
# meal_repository = MealRepository.new(csv_meals)
# controller = MealsController.new(meal_repository)

# csv_customers = File.join(__dir__, 'data/customers.csv')
# customer_repository = CustomerRepository.new(csv_customers)
# customer_controller = CustomersController.new(customer_repository)

# router = Router.new(controller, customer_controller)

router.run
