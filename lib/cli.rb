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
    end 
   
    def print_makes(makes)
        puts ""
        puts "Here are #{@make} cars"
        puts ""
        makes.each.with_index(1) do |m, i|
            puts "#{i}. #{m.make_name} #{m.make_model}"
        end 
    end  

end 
