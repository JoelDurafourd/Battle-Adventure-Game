require_relative 'controllers/controller.rb'
require_relative 'controllers/csv_loader_controller.rb'
require_relative 'models/player_character.rb'
require_relative 'models/starting_location.rb'
csv_file_path = File.join(__dir__, 'data', 'player_characters.csv')
location = StartingLocation

puts "Create a new Character, or load an existing one?"
    puts "1 - Create a new Character"
    puts "2 - Load an existing Character"
    puts "3 - Quit"
user_input = gets.chomp.to_i
case user_input
    when 1 
        puts "What would you like to name your Character?"
        character_name = gets.chomp 
        player_character = PlayerCharacter.new(attributes = {name: character_name}) if character_name != ""
        player_character = PlayerCharacter.new if character_name == ""
    when 2
        player_character = load_player_character(csv_file_path)
        location = player_character.location
        puts "Player loaded successfully"
    when 3
        exit
end

# player_character = load_player_character(csv_file_path)

# csv_player_inventory = File.join(__dir__, '/data/item_repository.csv')
# item_repository = ItemRepository.new(csv_player_inventory)
controller = Controller.new(player_character, csv_file_path)

# csv_customers = File.join(__dir__, 'data/customers.csv')
# customer_repository = CustomerRepository.new(csv_customers)
# customer_controller = CustomersController.new(customer_repository)

router = location.new(controller)

router.run
