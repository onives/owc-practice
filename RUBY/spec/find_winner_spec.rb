def find_winner(board)
    if(board[0][0] == 'X' and board[0][1] == 'X' and board[0][2] == 'X') || (board[1][0] == 'X' and board[1][1] == 'X' and board[1][2] == 'X') || (board[2][0] == 'X' and board[2][1] == 'X' and board[2][2] == 'X')
        return 'X'
    end

    if(board[0][0] == 'O' and board[0][1] == 'O' and board[0][2] == 'O') || (board[1][0] == 'O' and board[1][1] == 'O' and board[1][2] == 'O') || (board[2][0] == 'O' and board[2][1] == 'O' and board[2][2] == 'O')
        return 'O'
    end

    false
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
