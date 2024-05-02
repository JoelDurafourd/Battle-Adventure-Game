class PlayerCharacter 
    attr_reader :name, :health, :hunger 

    def initialize(attributes = {})
        @alive = true 
        @name = :name || "New Character" 
        @health = :health || 100
        @hunger = :hunger || 100
    end 

end 