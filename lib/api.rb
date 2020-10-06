# handle all of our API requests 
# hande all of our API requests
class API 

    def self.fetch_makes(make)
        url = "https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/#{make}?format=json"
        uri = URI(url) 
        response = Net::HTTP.get(uri)
        
        makes = JSON.parse(response)["Results"]
        new_model = Model.new(make)
        makes.each do |m|
            
            new_make = Make.new(name: m["Make_Name"], model: m["Model_Name"], make_id: m["Make_ID"], model_id: m["Model_ID"])
            new_model.makes << new_make
        end 
        binding.pry
    end 


    def self.get_make_id_details(make)
        url = "https://vpic.nhtsa.dot.gov/api/vehicles/GetVehicleTypesForMakeId/#{make.make_id}?format=json"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        mak = JSON.parse(response)["Results"]
        binding.pry
    end 

    
 


end 

