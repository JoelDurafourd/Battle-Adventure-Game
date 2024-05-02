class PlayerCharacter 
    attr_reader :name, :health, :hunger 

    def initialize(attributes = {})
        @alive = true 
        @name = attributes[:name] || "New Character" 
        @health = attributes[:health] || 100
        @hunger = attributes[:hunger] || 100
    end 

end 