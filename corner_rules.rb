require_relative 'rules'
class Corner_Rules < Rules

	def left_corner_top(row,col,board_size)
    aliveCells = 0
    #top
    if (@@board[board_size - 1][board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[board_size - 1][0] == 1) 
        aliveCells+=1
    end
    if (@@board[board_size - 1][1] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@@board[row][board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row][col + 1] == 1) 
        aliveCells+=1
    end
    #under
    if (@@board[row + 1][board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row + 1][col] == 1) 
        aliveCells+=1
    end
    if (@@board[row + 1][col + 1] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end

   def rigth_corner_top(row,col,board_size)
    aliveCells = 0
    #top
    if (@@board[board_size - 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[board_size - 1][col] == 1) 
        aliveCells+=1
    end
    if (@@board[board_size - 1][0] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@@board[row][col - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row][0] == 1) 
        aliveCells+=1
    end
    #under
    if (@@board[row + 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row + 1][col] == 1) 
        aliveCells+=1
    end
    if (@@board[row + 1][0] == 1) 
        aliveCells+=1
    end
     # puts "Celulas vivas rigth corner top"
     # puts aliveCells
     return aliveCells
  end

  def left_corner_down(row,col,board_size)
    aliveCells = 0
    #top
    if (@@board[row - 1][board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row - 1][col] == 1) 
        aliveCells+=1
    end
    if (@@board[row - 1][col + 1] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@@board[row][board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row][col + 1] == 1) 
        aliveCells+=1
    end
    #under
    if (@@board[0][board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[0][col] == 1) 
        aliveCells+=1
    end
    if (@@board[0][col + 1] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end

  def rigth_corner_down(row,col,board_size)
    aliveCells = 0
    #top
    if (@@board[row - 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row - 1][col] == 1) 
        aliveCells+=1
    end
    if (@@board[row - 1][0] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@@board[row][col - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[row][0] == 1) 
        aliveCells+=1
    end
    #under
    if (@@board[0][col - 1] == 1) 
        aliveCells+=1
    end
    if (@@board[0][col] == 1) 
        aliveCells+=1
    end
    if (@@board[0][0] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end

end