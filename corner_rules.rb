require_relative 'rules'
module CornerRules 
	def left_corner_top(row,col)
    aliveCells = 0
    aliveCells = neighbour_top(@board_size,col, aliveCells)
    #same row 
    aliveCells = same_row_corner(row,col,aliveCells)
    #under
    aliveCells = rul_if(row + 1,@board_size - 1, aliveCells)
    aliveCells = rul_if(row + 1,col, aliveCells)
    aliveCells = rul_if(row + 1,col + 1, aliveCells)
    return aliveCells
  end

   def rigth_corner_top(row,col)
    aliveCells = 0
    #top
    aliveCells = rul_if(@board_size - 1,col- 1, aliveCells)
    aliveCells = rul_if(@board_size - 1,col, aliveCells)
    aliveCells = rul_if(@board_size - 1,0, aliveCells)
    #same row 
    aliveCells = rul_if(row,col- 1, aliveCells)
    aliveCells = rul_if(row,0, aliveCells)
    #under
    aliveCells = rul_if(row + 1,col- 1, aliveCells)
    aliveCells = rul_if(row + 1,col, aliveCells)
    aliveCells = rul_if(row + 1,0, aliveCells)
    return aliveCells
  end

  def left_corner_down(row,col)
    aliveCells = 0
    aliveCells = neighbour_top(row,col, aliveCells)
    #same row 
    aliveCells = same_row_corner(row,col,aliveCells)
    #under
    aliveCells = rul_if(0,@board_size - 1, aliveCells)
    aliveCells = rul_if(0,col, aliveCells)
    aliveCells = rul_if(0,col + 1, aliveCells)
    return aliveCells
  end

  def rigth_corner_down(row,col)
    aliveCells = 0
    #top
    aliveCells = rul_if(row - 1,col - 1, aliveCells)
    aliveCells = rul_if(row - 1,col, aliveCells)
    aliveCells = rul_if(row - 1,0, aliveCells)
    #same row 
    aliveCells = rul_if(row,col - 1, aliveCells)
    aliveCells = rul_if(row ,0, aliveCells)
    #under
    aliveCells = rul_if(0,col - 1, aliveCells)
    aliveCells = rul_if(0,col, aliveCells)
    aliveCells = rul_if(0,0, aliveCells)
    return aliveCells
  end

end