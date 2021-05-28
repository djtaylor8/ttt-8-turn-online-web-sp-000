def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == true
    true
  else 
    false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  input_to_index(input)
  while validate_move?(board, index) != true
    puts "Please enter 1-9"
  end
    move(board, index, value = "X")
    display_board(board)
  end
end