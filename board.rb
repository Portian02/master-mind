require "colorize"


class BoardGame 
    attr_accessor :board

    def initialize(turns)
    @board = Array.new(turns) {Array.new(5) {[]}}
    end

    def print_board 
        puts "Board Game"
        @board.each_with_index do |row, index|
            row_display = row[0..3].map do |color|
                if color.is_a?(Array) && color.empty?
                    ' '
                else
                    color.to_s.colorize(color: color.to_S)
                end
            end.join(' ')
            feed_back = (row[4]||[]).join(' ')
            puts "#{index + 1}. #{row_display}" 
            puts "  #{feed_back}"
        
        end
        puts "-----------------------"
    end

end
game_board = BoardGame.new(12)
game_board.print_board