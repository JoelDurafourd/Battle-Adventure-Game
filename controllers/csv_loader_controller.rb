require 'csv'

def load_player_character(csv_file_path)
    CSV.foreach(csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
        player_character = PlayerCharacter.new(row)
    end
    player_character
end 