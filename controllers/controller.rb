require_relative '../views/view.rb'
require_relative '../controllers/in_battle.rb'
require_relative '../models/goblin.rb'
require_relative '../models/enemy_class.rb'
require_relative '../models/player_character.rb'
require_relative '../models/wooded_clearing.rb'
require_relative '../models/woods.rb'

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
        if @player_character.alive? == false 
            @view.death_sequence 
            save_and_quit
            exit
        end 
    end 

    def start_battle(selected_enemy)
        new_battle = InBattle.new(self, @player_character, selected_enemy.new)
        new_battle.run 
    end 

    def location_selector
        @player_character.hunger -= 20
        location = [WoodedClearing, Woods].sample
        new_location = location.new(self)
        @player_character.location = new_location.class
        puts "Travelling has made you tired and hungry, so you decide to stop in a #{new_location.name}"
        new_location.run
    end 

    def a_day_passes
        @player_character.hunger -= 20
        @view.awake_hunger(@player_character)
    end 
end 