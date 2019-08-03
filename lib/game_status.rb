# Helper Method
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
	[0, 1, 2],
	[3, 4, 5],
	[6, 7, 8],
	[0, 3, 6],
	[1, 4, 7],
	[2, 5, 8],
	[0, 4, 8],
	[2, 4, 6],
]

def won?(board)
  WIN_COMBINATIONS.each do |w_index|
    w_index_1 = WIN_COMBINATIONS[0]
    w_index_2 = WIN_COMBINATIONS[1]
    w_index_3 = WIN_COMBINATIONS[2]
    position_1 = board[w_index_1]
    position_2 = board[w_index_2]
    position_3 = board[w_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      puts "Top row win"
    else
      false
    end
  end
end

def full?
end

def draw?
end

def over?
end

def winner?
end
