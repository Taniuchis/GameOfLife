require_relative 'Game_of_life'

class Rules < Game_Life
  
  def check_rules(coorx, coory, board_size)
    aliveCells = 0
    row = coorx
    col = coory
    if (row != 0 && row != board_size - 1 && col != 0 && col != board_size - 1) 
      aliveCells = middle_cells(row,col)
    end
		# left corner  top
    if (row == 0 && col == 0) 
      aliveCells = Corner_Rules.new.left_corner_top(row,col,board_size)
    end
    #rigth corner top
    if (row == 0 && col == board_size - 1) 
      aliveCells = Corner_Rules.new.rigth_corner_top(row,col,board_size)
    end
    #left corner down
    if (row == board_size - 1 && col == 0) 
      aliveCells = Corner_Rules.new.left_corner_down(row,col,board_size)
    end
    #rigth corner down
    if (row == board_size - 1 && col == board_size - 1) 
      aliveCells = Corner_Rules.new.rigth_corner_down(row,col,board_size)        
    end
    #edge central top
    if (row == 0 && col != 0 && col != board_size - 1) 
      aliveCells = Frame_Rules.new.edge_central_top(row,col,board_size)
    end
    #edge central down
    if (row == board_size - 1 && col != 0 && col != board_size - 1) 
      aliveCells = Frame_Rules.new.edge_central_down(row,col,board_size)
    end
    #edge left
    if (col == 0 && row != board_size - 1 && row != 0) 
      aliveCells = Frame_Rules.new.edge_left(row,col,board_size) 
    end
    #edge right
    if (col == board_size - 1 && row != 0 && row != board_size - 1) 
      aliveCells =  Frame_Rules.new.edge_right(row,col,board_size)
    end
		currentCell = @@board[coorx][coory];
    cell = Death.new.live_die(aliveCells , currentCell) #val of cell
    return cell	
	end

  def middle_cells(row,col)
    aliveCells = 0
    #top
    if (@@board[row - 1][col - 1] == 1) 
      aliveCells += 1 
    end
    if (@@board[row - 1][col] == 1) 
        aliveCells += 1 
    end
    if (@@board[row - 1][col + 1] == 1) 
         aliveCells += 1 
    end
    #same row 
    if (@@board[row][col - 1] == 1) 
         aliveCells += 1 
    end
    if (@@board[row][col + 1] == 1) 
         aliveCells += 1 
    end
    #under
    if (@@board[row + 1][col - 1] == 1) 
        aliveCells += 1 
    end
    if (@@board[row + 1][col] == 1) 
        aliveCells += 1 
    end
    if (@@board[row + 1][col + 1] == 1) 
         aliveCells += 1 
    end
    return aliveCells
  end

end
