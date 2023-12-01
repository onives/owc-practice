class TicTacToe
    attr_accessor :board

    def initialize
        @board = Array.new(3) {Array.new(3, "_")}
    end
    def display_board
        @board.each do |row|
            puts "#{row}"
        end
    end
    def check_diagonal_win
        diagonal1 = [@board[0][0], @board[1][1], @board[2][2]]
        diagonal2 = [@board[0][2], @board[1][1], @board[2][0]]
        return (diagonal1.uniq.length == 1 && diagonal1.none?('_')) || (diagonal2.uniq.length == 1 && diagonal2.none?('_'))
    end
    def check_row_col_winner
        if @board[0].uniq.length == 1 || @board[1].uniq.length == 1 || @board[2].uniq.length == 1
            return true
        end
        false
    end
end