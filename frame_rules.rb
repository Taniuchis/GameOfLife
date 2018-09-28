require_relative 'rules'
module FrameRules 
	def edge_central_top(row,col)
    aliveCells = 0
    aliveCells = neighbour_top(@board_size,col, aliveCells)
    #same row 
    aliveCells = same_row(row,col, aliveCells)
    #under
    aliveCells = under_row(row,col, aliveCells)
    return aliveCells
  end

  def edge_central_down(row,col)
    aliveCells = 0
    aliveCells = neighbour_top(row,col, aliveCells)
    #same row 
    aliveCells = same_row(row,col, aliveCells)
    #under
    aliveCells = under_row(0,col, aliveCells)
    return aliveCells
  end

  def edge_left(row,col)
    aliveCells = 0
    aliveCells = rul_if(row - 1,@board_size - 1, aliveCells)
    aliveCells = rul_if(row - 1,col, aliveCells)
    aliveCells = rul_if(row - 1,col + 1, aliveCells)
    #same row 
    aliveCells = same_row_corner(row,col,aliveCells)
    #under
    aliveCells = rul_if(row,@board_size - 1, aliveCells)
    aliveCells = rul_if(row + 1,col, aliveCells)
    aliveCells = rul_if(row + 1,col + 1, aliveCells)
    return aliveCells
  end

   def edge_right(row,col)
    aliveCells = 0
    aliveCells = rul_if(row - 1,col - 1, aliveCells)
    aliveCells = rul_if(row + 1,col, aliveCells)
    aliveCells = rul_if(row - 1,0, aliveCells)
    #same row 
    aliveCells = rul_if(row,col - 1, aliveCells)
    aliveCells = rul_if(row,0, aliveCells)
    #under
    aliveCells = rul_if(row + 1,col - 1, aliveCells)
    aliveCells = rul_if(row + 1,col, aliveCells)
    aliveCells = rul_if(row + 1,0, aliveCells)
    return aliveCells
  end
  
end