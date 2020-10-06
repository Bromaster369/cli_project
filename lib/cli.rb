#interactions with user
#contain all of our gets and puts 
# control the flow of our program 

class CLI 

    def start 
        puts ""
        puts "Welcome to Car finder!"
        puts ""
        puts "Search for makes by entering a make"
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
            binding.pry 
            make =  Make.find_by_make(@make).makes[inp.to_i - 1]
            API.get_make_id_details(make) 
        end 
    end 
   
    def print_makes(makes)
        puts ""
        puts "Here are #{@make} cars"
        puts ""
        makes.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name} #{m.model}"
        end 
    end  

end 
