# keep track of our makes 
# turn our responses into objects 
# save all makes created 

class Make 
    attr_accessor :make_name, :make_model
    @@all = []

    def initialize(make_name:, make_model:)
        @make_name = make_name
        @make_model = make_model
        @@all << self 
    end 

    def self.all 
        @@all 
    end 


end 

