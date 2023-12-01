def find_winner(board)
    board.each do |row|
        if (find_winner_in_row(row) == 'X')
            return 'X'
        elsif (find_winner_in_row(row) == 'O')
            return 'O'
        end
    end
    
    false
end

def find_winner_in_row(row)
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
end
