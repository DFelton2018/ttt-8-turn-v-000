def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

<<<<<<< HEAD
def valid_move?(board, index)
  if index.between?(0,8) && board[index] == " " 
    return true
  else 
    return false
=======
def valid_move?(board, position_taken)
  if position_taken.between?(0,8) != true || board[position_taken] == "X"
    return false
  else 
    return true
>>>>>>> 1570c2af6bbdfe3236ea75e827d0aa6cd46c47e6
end
end

def position_taken(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
end
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(board, index, token = "X")
  board[index.to_i] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
<<<<<<< HEAD
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
=======
  if valid_move?(board, index) == true && position_taken(board, index) == false
    move(board, user_input, token = "X")
    puts display_board(board)
  else
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
>>>>>>> 1570c2af6bbdfe3236ea75e827d0aa6cd46c47e6
end
end