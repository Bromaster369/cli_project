#interactions with user
#contain all of our gets and puts 
# control the flow of our program 

class CLI 

    def start 
        puts ""
        puts "Welcome to Car finder!"
        puts ""
        puts "Search for makes by entering a make's name"
        puts ""
        @make = gets.strip.downcase 
        puts ""
        API.fetch_makes(@make)
        Make.all 
        puts ""
        makes = Make.all 
        print_makes(makes)        
        puts ""
        puts "Type a number listed to see more details or type 'exit' to exit"
        puts ""
        inp = gets.strip.downcase 
        while inp != 'exit' do 
            if inp == 'list'
                print_makes(Make.find_by_make(@make))
            elsif inp.to_i > 0 && inp.to_i <= Make.find_by_make(@make).length
            make =  Make.find_by_make(@make)[inp.to_i - 1]
           
            elsif
                API.get_make_details(make)
                print_make(make)
            
            else 
                print_make(Make.find(make)[0])
            end 
        # elsif inp == 'make'
        #         prompt_make
        # else 
        #         puts "I do not understand - please try again."
        # end
        # puts "Please select another number or type 'exit' to exit"
        prompt
        inp = gets.strip.downcase  

            

           
            # puts ""
            # puts "Please select another number or type 'exit' to exit"
            # prompt
            # inp = gets.strip.downcase    
        end 
        puts "Goodbye!"
    end 
   
    def print_makes(makes)
        puts ""
        puts "Here are #{@make} cars"
        puts ""
        makes.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name} #{m.model}"
        end 
    end  

    def print_make(m)
        puts ""
        puts "Make details:"
        puts ""
        puts "Make: #{m.name}."
       
        puts "Model: #{m.model}."
        
        puts "Make Id: #{m.make_id}."
        
        puts "Model Id: #{m.model_id}."
        
        puts "Vehicle Type: #{m.vehicle_type}."

    end 

    def prompt
        puts ""
       
        puts "OR type 'make' to search for a new make"
        puts "OR type 'list' to see the list again"
        puts "OR type 'exit' to exit"
        puts ""
    end 

    def prompt_make
        puts ""
        puts "Search for makes by entering a make"
        puts ""
        @make = gets.strip.downcase
        puts ""
        API.fetch_makes(@makes)
        puts ""
        makes = Make.find_by_make(@make)
        print_makes(makes)

    end 
end 
