# METHODS

# Show the Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Change Input to Index
def input_to_index(input)
  index = input.to_i - 1
end

# Checks to see if Position Occupied
def position_taken?(board, index)
  if board[index] === " " || board[index] === ""
    false
  else
    true
  end
end

# Checks for Valid Moves
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) === false
    true
  else
    false
  end
end

# move(board, index, player="X")

def move(board, index, player = "X")
  if valid_move?(board, index) === true && position_taken?(board, index) === false
    board[index] = player
    display_board(board)
  end
end

def turn
  puts "PLease enter 1-9:"
end

# puts "Welcome to Tic Tac Toe! Type a number 1-9 to select your move:"
# input = gets.strip
# input_to_index(input)

# TURN
  # ask for move by position 1-9
  # get input
  # convert input to an index
  # if index is valid
    # make the move at index
    # display the board
  # else
    # ask for a new move until a valid move is received
  # end
# end