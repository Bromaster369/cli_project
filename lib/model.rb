


class Model 
    attr_accessor :name, :makes 

    @@all = []

    def initialize(name)
        @name = name 
        @makes = makes
    end 

    def self.all
        @@all 
    end 

end 
