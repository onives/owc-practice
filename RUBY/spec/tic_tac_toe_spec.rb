require './lib/tic_tac_toe.rb'

describe TicTacToe do
    it "should create a new instance of the game" do
        game = TicTacToe.new
        expect(game.board).to eql([
            ["_", "_", "_"],
            ["_", "_", "_"],
            ["_", "_", "_"]
        ])
    end
    describe "#display_board method" do
        it "should display current state of the board" do
            game = TicTacToe.new
            expect(game.display_board).to eql([
                ["_", "_", "_"],
                ["_", "_", "_"],
                ["_", "_", "_"]
            ])
        end
    end
    describe "check diagonal win" do
        it 'should return true for a diagonal left - right win' do
            game = TicTacToe.new
            game.board = [["X", "O", "X"], ["O", "X", "O"], ["O", "O", "X"]]
            expect(game.check_diagonal_win).to eql(true)
        end
        it 'should return true for a diagonal right - left win' do
            game = TicTacToe.new
            game.board = [["X", "O", "X"], ["O", "X", "O"], ["X", "O", "O"]]
            expect(game.check_diagonal_win).to eql(true)
        end
        it 'should return false for a diagonal missing xter' do
            game = TicTacToe.new
            game.board = [["X", "O", "X"], ["O", "_", "O"], ["X", "O", "O"]]
            expect(game.check_diagonal_win).to eql(false)
        end
        it 'should return false for a diagonal lose' do
            game = TicTacToe.new
            game.board = [["X", "X", "O"], ["O", "O", "X"], ["X", "O", "X"]]
            expect(game.check_diagonal_win).to eql(false)
        end
    end 
    describe "Check Row Column Win" do
        it "should return true for a row[0] win" do 
            game = TicTacToe.new
            game.board = [["O", "O", "O"], ["X", "O", "X"], ["X", "X", "O"]]
            expect(game.check_row_col_winner).to eql(true)
        end
        it "should return true for a row[1] win" do 
            game = TicTacToe.new
            game.board = [["X", "O", "X"],["O", "O", "O"],["X", "X", "O"]]
            expect(game.check_row_col_winner).to eql(true)
        end
        it "should return true for a row[2] win" do 
            game = TicTacToe.new
            game.board = [["X", "O", "X"],["X", "X", "O"], ["O", "O", "O"]]
            expect(game.check_row_col_winner).to eql(true)
        end
        it "should return false for a missing xter" do 
            game = TicTacToe.new
            game.board = [["X", "O", "X"],["X", "X", "O"], ["O", "_", "O"]]
            expect(game.check_row_col_winner).to eql(false)
        end
    end
end