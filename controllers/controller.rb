require_relative '../views/view.rb'
require_relative '../controllers/in_battle.rb'
require_relative '../models/goblin.rb'

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

    def death_check(player_character)
        if @player_character.alive == false 
            @view.death_sequence 
            save_and_quit
            exit
        end 
    end 

    def start_battle 
        new_battle = InBattle.new(self, @player_character, Goblin.new)
        new_battle.run 
    end 
end 