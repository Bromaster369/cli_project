# keep track of our makes 
# turn our responses into objects 
# save all makes created 

class Make 
    attr_accessor :name, :model, :make_id, :model_id, :vehicle_type
    @@all = []

    def initialize(name:, model:, make_id:, model_id:)
        @name = name
        @model = model
        @make_id = make_id
        @model_id = model_id
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_make(make)
    Make.all.select do |m| 
        m.name.downcase == make 
     
        end 
    end 
end 



