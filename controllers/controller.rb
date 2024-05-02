require_relative '../views/view.rb'

class Controller

    def initialize(player_character)
        @player_character = player_character
        @view = View.new
    end 

    def status
        @view.status_report(@player_character)
    end 

end 