def find_winner(board)
    # returns row winner
    board.each do |row|
        row_winner = find_winner_in_line(row)
        if row_winner
            return row_winner
        end
    end

    # returns column winner
    board.transpose.each do |col|
        col_winner = find_winner_in_line(col)
        if col_winner
            return col_winner
        end
    end

    # returns diagonal winner
    if find_winner_in_diagonal(board)
        return find_winner_in_diagonal(board)
    end

    # check for any unfilled space
    board.each do |row|
        row.each do |col|
            if col == '-'
                return false
            end
        end
    end

    :tie
end

def find_winner_in_line(row)

    if row.count('X') == 3
        'X'
    elsif row.count('O') == 3
        'O'
    else
        false
    end

end

def find_winner_in_diagonal(board)
    diagonal1 = [board[0][0], board[1][1], board[2][2]]
    diagonal2 = [board[0][2], board[1][1], board[2][0]]

    if find_winner_in_line(diagonal1)
        return find_winner_in_line(diagonal1)
    elsif find_winner_in_line(diagonal2)
        return find_winner_in_line(diagonal2)
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
  it 'returns "X" when, given a board where X claims the top column' do
    board = [
      ['X', '-', '-'],
      ['X', '-', '-'],
      ['X', '-', '-']
    ]

    expect(find_winner(board)).to eql('X')
  end
  it 'returns "X" when, given a board where X claims the middle column' do
    board = [
      ['-', 'X', '-'],
      ['-', 'X', '-'],
      ['-', 'X', '-']
    ]
    expect(find_winner(board)).to eql('X')
  end
  it 'returns "X" when, given a board where X claims the bottom column' do
    board = [
      ['-', '-', 'X'],
      ['-', '-', 'X'],
      ['-', '-', 'X']
    ]

    expect(find_winner(board)).to eql('X')
  end
  it 'returns "O" when, given a board where O claims the top column' do
    board = [
        ['O', '-', '-'],
        ['O', '-', '-'],
        ['O', '-', '-']
    ]

    expect(find_winner(board)).to eql('O')
  end
  it 'returns "O" when, given a board where O claims the middle column' do
    board = [
      ['-', 'O', '-'],
      ['-', 'O', '-'],
      ['-', 'O', '-']
    ]
    expect(find_winner(board)).to eql('O')
  end
  it 'returns "X" when, given a board where X claims the righ-left diagonal' do
    board = [
      ['X', '-', '-'],
      ['-', 'X', '-'],
      ['-', '-', 'X']
    ]
    expect(find_winner(board)).to eql('X')
  end
  it 'returns "X" when, given a board where X claims the left-right diagonal' do
    board = [
      ['-', '-', 'X'],
      ['-', 'X', '-'],
      ['X', '-', '-']
    ]
    expect(find_winner(board)).to eql('X')
  end
  it 'returns "O" when, given a board where O claims the righ-left diagonal' do
    board = [
      ['O', '-', '-'],
      ['-', 'O', '-'],
      ['-', '-', 'O']
    ]
    expect(find_winner(board)).to eql('O')
  end
  it 'returns "O" when, given a board where O claims the left-right diagonal' do
    board = [
      ['-', '-', 'O'],
      ['-', 'O', '-'],
      ['O', '-', '-']
    ]
    expect(find_winner(board)).to eql('O')
  end
  it 'returns :tie when, given a board where neither X nor O wins' do
    board = [
      ['X', 'O', 'X'],
      ['X', 'O', 'O'],
      ['O', 'X', 'X']
    ]
    expect(find_winner(board)).to eql(:tie)
  end
end
