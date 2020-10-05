# keep track of our makes 
# turn our responses into objects 
# save all makes created 

class Make 
    attr_accessor :make_name, :make_model, :make_id, :model_id  
    @@all = []

    def initialize(make_name:, make_model:, make_id:, model_id:)
        @make_name = make_name
        @make_model = make_model
        @make_id = make_id
        @model_id = model_id
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

   def self.find_by_model_id(model_id)
    @@all.select {|m| m.model_id == model_id}
    binding.pry
   end 

end 



