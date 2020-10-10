# handle all of our API requests 
# hande all of our API requests
class API 

    def self.fetch_makes(make)
        url = "https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/#{make}?format=json"
         uri = URI(url) 
            response = Net::HTTP.get(uri)
            
            makes = JSON.parse(response)["Results"]
            
            makes.each do |m|
                
                new_make = Make.new(name: m["Make_Name"], model: m["Model_Name"], make_id: m["Make_ID"], model_id: m["Model_ID"])
                
            end 
        
    end 


    def self.get_make_details(make)
        
        
        url = "https://vpic.nhtsa.dot.gov/api/vehicles/GetVehicleTypesForMakeId/#{make.make_id}?format=json"
    

        uri = URI(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)["Results"][0]
        
        make.vehicle_type = data["VehicleTypeName"]
       
    end

    #  def self.get_all_makes(make)
        
    #     url = "https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json"
    

    #     uri = URI(url)
    #     response = Net::HTTP.get(uri)
    #     data = JSON.parse(response)["Results"]
    #     data.each do |m|
                
    #         new_make = Make.new(name: m["Make_Name"]
    #     end 
    # end 
      
        
        
  
    
 


end 

