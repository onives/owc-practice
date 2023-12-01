def find_winner(board)
    board.each do |row|
        if (find_winner_in_row(row) == 'X')
            return 'X'
        end
    end

    # if(find_winner_in_row(board[0]) == 'X') || (find_winner_in_row(board[1]) == 'X') || (find_winner_in_row(board[2]) == 'X')
    #     return 'X'
    # end

    if(board[0][0] == 'O' and board[0][1] == 'O' and board[0][2] == 'O') || (board[1][0] == 'O' and board[1][1] == 'O' and board[1][2] == 'O') || (board[2][0] == 'O' and board[2][1] == 'O' and board[2][2] == 'O')
        return 'O'
    end

    false
end

def find_winner_in_row(row)
    if(row[0] == 'X' and row[1] == 'X' and row[2] == 'X')
      'X'
    else
      false
    end
end

describe '#find_winner' do
  it 'returns false when, given an empty game board' do
    board = [
      ['-', '-', '-'],
      ['-', '-', '-'],
      ['-', '-', '-']
    ]

    expect(find_winner(board)).to eql(false)
  end

  it 'returns "X" when, given a board where X claims the top row' do
    board = [
      ['X', 'X', 'X'],
      ['-', '-', '-'],
      ['-', '-', '-']
    ]

    expect(find_winner(board)).to eql('X')
  end
  it 'returns "X" when, given a board where X claims the middle row' do
    board = [
      ['-', '-', '-'],
      ['X', 'X', 'X'],
      ['-', '-', '-']
    ]

    expect(find_winner(board)).to eql('X')
  end
  it 'returns "X" when, given a board where X claims the bottom row' do
    board = [
      ['-', '-', '-'],
      ['-', '-', '-'],
      ['X', 'X', 'X']
    ]

    expect(find_winner(board)).to eql('X')
  end
  it 'returns "O" when, given a board where O claims the top row' do
    board = [
      ['O', 'O', 'O'],
      ['-', '-', '-'],
      ['-', '-', '-']
    ]

    expect(find_winner(board)).to eql('O')
  end
  it 'returns "O" when, given a board where O claims the middle row' do
    board = [
      ['-', '-', '-'],
      ['O', 'O', 'O'],
      ['-', '-', '-']
    ]

    expect(find_winner(board)).to eql('O')
  end
  it 'returns "O" when, given a board where O claims the bottom row' do
    board = [
      ['-', '-', '-'],
      ['-', '-', '-'],
      ['O', 'O', 'O']
    ]

    expect(find_winner(board)).to eql('O')
  end
end
