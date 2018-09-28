require_relative 'rules'
#class Frame_Rules < Rules
module Frame_Rules 

	def edge_central_top(row,col)
    aliveCells = 0
    if (@board[@board_size - 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[@board_size - 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[@board_size - 1][col + 1] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@board[row][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row][col + 1] == 1) 
        aliveCells+=1
    end
    #under
    if (@board[row + 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row + 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[row + 1][col + 1] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end

  def edge_central_down(row,col)
    aliveCells = 0
    if (@board[row - 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row - 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[row - 1][col + 1] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@board[row][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row][col + 1] == 1) 
        aliveCells+=1
    end
    #under
    if (@board[0][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[0][col] == 1) 
        aliveCells+=1
    end
    if (@board[0][col + 1] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end

  def edge_left(row,col)
    aliveCells = 0
    if (@board[row - 1][@board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row - 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[row - 1][col + 1] == 1) 
        aliveCells+=1
    end
    #same row 
    if (@board[row][@board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row][col + 1] == 1) 
        aliveCells+=1
    end
    #under
    if (@board[row + 1][@board_size - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row + 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[row + 1][col + 1] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end

   def edge_right(row,col)
    aliveCells = 0
    if (@board[row - 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row - 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[row - 1][0] == 1) 
        aliveCells+=1
    end

    #same row 
    if (@board[row][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row][0] == 1) 
        aliveCells+=1
    end

    #under
    if (@board[row + 1][col - 1] == 1) 
        aliveCells+=1
    end
    if (@board[row + 1][col] == 1) 
        aliveCells+=1
    end
    if (@board[row + 1][0] == 1) 
        aliveCells+=1
    end
    return aliveCells
  end
  
end