require_relative '../views/view.rb'

class Controller

    def initialize(player_character, csv_file_path)
        @csv_file_path = csv_file_path
        @player_character = player_character
        @view = View.new
    end 

    def status
        @view.status_report(@player_character)
    end 

    def save_and_quit
        csv_save(@csv_file_path, @player_character)
    end 

    def player_vitals
        if @player_character.health.zero? || @player_character.hunger.zero?
            @player_character.alive = false 
        end 
    end 

    def death_check
        if @player_character.alive == false 
            @view.death_sequence 
            save_and_quit
        end 
    end 
end 