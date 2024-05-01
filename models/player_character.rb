class PlayerCharacter 
    attr_reader :name, :health, :hunger 
    
    def initialize(name)
        @alive = true 
        @name = name 
        @health = 100 
        @hunger = 100 
    end 

end 