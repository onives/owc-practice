def find_winner(board)
    board.each do |row|
        row_winner = find_winner_in_row(row)
        if row_winner
            return row_winner
        end
    end
    board.transpose.each do |col|
        col_winner = find_winner_in_row(col)
        if col_winner
            return col_winner
        end
    end

    false
end

def find_winner_in_row(row)
    # try using a loop here

    if(row[0] == 'X' and row[1] == 'X' and row[2] == 'X')
      'X'
    elsif (row[0] == 'O' and row[1] == 'O' and row[2] == 'O')
        'O'
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
  
end
