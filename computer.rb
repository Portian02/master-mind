class Computer 
    attr_writer :avaible_colors


    def initialize(colors)
        @avaible_colors = colors
        @possible_combinations = colors.repeated_permutation(4).to_a.shuffle
    end

    def guess 
        case rand(2)
        when 0 then computer_guess_brute_force
        when 1 then computer_guess_random
    end

    def computer_guess_random
        @avaible_colors.sample(4)
    end

    def computer_guess_brute_force
        @possible_combinations.pop 
    
    end
end















end