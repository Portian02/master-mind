require 'colorize'
require_relative "./player.rb"
require_relative "./computer.rb"
class Game 
    attr_accessor :colors, :random_pattern, :name
    p "Welcome to Mastermind please enter your name"
    @name = gets.chomp.to_s
 p   player = Player.new(@name)

    sleep 1
    puts "Hi #{player} would you like to be the creator o player?(C/P)"
    answer = gets.chomp.downcase
    if answer == "c" || answer == "creator"
        puts "Enter your pattern"
        pattern = gets.chomp.downcase
            computer = Computer.new(pattern)
           p computer.guess
        else
             p "are you  ready to play?(Y/N)"

            response = gets.chomp.downcase
            if response == "y" || response == "yes"
                def play
                    puts"_____________________Instructions_______________________"
                    puts "Yeah!, this game is about guess" 
                    puts "the correct pattern of colors," 
                    puts "so you have to pickup 4 colors" 
            puts "and guess the pattern before 12 attempts," 
            puts "these are the posibles colors: red, blue, green, yellow"
            puts"------------------------------------------------------"
            p "get ready to start"
            
            @colors = ["red","blue","green","yellow"]
            @random_pattern = @colors.sample(4)
            counter = 12
            row = 0
            response_arr = []
            @random_pattern
            
            for i in 1..12 do
                puts "Enter your pattern"
                puts "you have #{counter}"
                pattern = gets.chomp.downcase
                response = pattern.split
                p "#{row + 1}. #{response}"
                response.each_with_index do |element, index|
                    if response[index] == @random_pattern[index]
                        prueba = "🟢"
                        response_arr << prueba
                    else
                        prueba = "🔴"
                        response_arr << prueba

                    end
                end
                counter -= 1
                if counter == 0
                    puts "you lost the correct pattern was #{@random_pattern}"
                    break
                end
                if @random_pattern == response 
                    puts "YOU WON in #{counter} turns!!!"
                    break
                end
                p "#{row + 1}. #{response_arr}"
                response_arr.clear
            end
        end    
    else
        p "See you in other time"
    end
    sleep 1         
end
end

