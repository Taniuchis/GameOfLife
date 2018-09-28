require_relative 'corner_rules'
require_relative 'frame_rules'

#class Rules < Game_Life
module Rules
 include Corner_Rules
 include Frame_Rules
 #class Rules < Game_Life
  
  def check_rules(coorx, coory)
    aliveCells = 0
    row = coorx
    col = coory
    #puts
    if (row != 0 && row != @board_size - 1 && col != 0 && col != @board_size - 1) 
      aliveCells = middle_cells(row,col)
    end
		# left corner  top
    if (row == 0 && col == 0) 
      aliveCells = left_corner_top(row,col)
      #print aliveCells
    end
    #rigth corner top
    if (row == 0 && col == @board_size - 1) 
      aliveCells = rigth_corner_top(row,col)
    end
    #left corner down
    if (row == @board_size - 1 && col == 0) 
      aliveCells = left_corner_down(row,col)
    end
    #rigth corner down
    if (row == @board_size - 1 && col == @board_size - 1) 
      aliveCells = rigth_corner_down(row,col)        
    end
    #edge central top
    if (row == 0 && col != 0 && col != @board_size - 1) 
      aliveCells = edge_central_top(row,col)
    end
    #edge central down
    if (row == @board_size - 1 && col != 0 && col != @board_size - 1) 
      aliveCells = edge_central_down(row,col)
    end
    #edge left
    if (col == 0 && row != @board_size - 1 && row != 0) 
      aliveCells = edge_left(row,col) 
    end
    #edge right
    if (col == @board_size - 1 && row != 0 && row != @board_size - 1) 
      aliveCells = edge_right(row,col)
    end
	currentCell = @board[coorx][coory]
    cell = Death.new.live_die(aliveCells , currentCell) #val of cell
    return cell	
	end

  def middle_cells(row,col)
    aliveCells = 0
    #top
    if (@board[row - 1][col - 1] == 1) 
      aliveCells += 1 
    end
    if (@board[row - 1][col] == 1) 
        aliveCells += 1 
    end
    if (@board[row - 1][col + 1] == 1) 
         aliveCells += 1 
    end
    #same row 
    if (@board[row][col - 1] == 1) 
         aliveCells += 1 
    end
    if (@board[row][col + 1] == 1) 
         aliveCells += 1 
    end
    #under
    if (@board[row + 1][col - 1] == 1) 
        aliveCells += 1 
    end
    if (@board[row + 1][col] == 1) 
        aliveCells += 1 
    end
    if (@board[row + 1][col + 1] == 1) 
         aliveCells += 1 
    end
    return aliveCells
  end
 #end 
end
