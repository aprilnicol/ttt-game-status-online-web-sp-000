# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]
def won?(board)
  WIN_COMBINATIONS.each do
    |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combination
    end
end
return false
end
def full?(board)
  if board.any? {|full_board| full_board == nil || full_board == " "}
    return false
  else
    return true
  end
end 
def draw?(board)
  if !won?(board) && full?(board)
    return true 
  elsif !full?(board) && !won?(board)
    return false 
  else 
    return board
  end 
end 
    
