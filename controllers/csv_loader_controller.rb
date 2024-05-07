require 'csv'
require_relative '../models/player_character.rb'

def load_player_character(csv_file_path)
    player_character = nil 
    CSV.foreach(csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
        player_character = PlayerCharacter.new(row.to_h)
        break  
    end
    player_character 
end

def csv_save(csv_file_path, player_character)
    headers = ["name", "health", "hunger", "weapon", "weapon_damage", "location"]
    CSV.open(csv_file_path, "wb") do |csv|
        csv << headers
        csv << [player_character.name, player_character.health, player_character.hunger, player_character.weapon, player_character.weapon_damage, player_character.location.class]
    end
  end