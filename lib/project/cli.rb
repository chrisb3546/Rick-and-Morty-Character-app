class Cli
    def run
       input = " "
       API.get_characters
       while input != "exit"
           puts " "
           puts "Welcome to the Rick and Morty character app!"
           puts " "
           puts "To see a list of characters names, type 'names'"
           puts " "
           puts "To learn what a characters species and origin is type 'choose'"
           input = gets.strip.downcase
               case input
                   when  "names"
                    names
                   when "choose"
                    choose(input)
               end 
           end  
       end 
       

   
   def names
       puts "Here is a list of character names"
       puts " "
        Character.all.each.with_index(1) do |character, index|
           puts "#{index}. #{character.name}"
        end
        puts "Please select number to character you would like to know more about"
        input = gets.strip.to_i
        if input >= 1 && input <= Character.all.length
            character = Character.all[input-1]
            puts "#{character.name}, #{character.origin}, #{character.species}"
        else 
            puts
            puts "sorry, please use a valid input"
            names

        end
    end 
     
       
           



    def choose(input)
        puts "Which character would you like to know more about?"
        input = gets.strip.to_s
        Character.all.find do |character|
            if input == character.name
                puts " "
                puts "#{character.name}, #{character.origin}, #{character.species}"
            end 
        end 
    end 
end 
   