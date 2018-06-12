# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [2,5,8], [0,4,8], [2,4,6], [1,4,7]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

   position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1) #detect returns first element (position_1) & make sure position is taken (that it's either an X or O).
  end
end

def full?(board)

end


def draw?(board)
  
end

def over?(board)
  
end