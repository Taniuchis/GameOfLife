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
    print "coordenada"
    print row.to_s
    print col.to_s
    print "<-"
    aliveCells = 0
     print "("
     print "<"
     print (@board[row - 1][col - 1]).to_s
     print ">"
    if (@board[row - 1][col - 1] == 1) 
        print (row-1).to_s
        print (col-1).to_s
        print "entro 1 "
        aliveCells+=1
    end
    print "<"
     print (@board[row - 1][col]).to_s
     print ">"
    if (@board[row - 1][col] == 1) 
        print (row-1).to_s
        print (col).to_s
        print "entro 2"
        aliveCells+=1
    end
     print "<"
     print (@board[row - 1][col+1]).to_s
     print ">"
    if (@board[row - 1][col + 1] == 1) 
        print (row-1).to_s
        print (col+1).to_s
        aliveCells+=1
        print "entro 3 "
    end
    #same row 
    print "<"
     print (@board[row][col-1]).to_s
     print ">"
    if (@board[row][col - 1] == 1) 
        print (row).to_s
        print (col-1).to_s
        print "entro 4"
        aliveCells+=1
    end
    print "<"
     print (@board[row][col+1]).to_s
     print ">"
    if (@board[row][col + 1] == 1) 
        print (row).to_s
        print (col+1).to_s
        print "entro 5 "
        aliveCells+=1
    end
    #under
    print "<"
     print (@board[0][col-1]).to_s
     print ">"
    if (@board[0][col - 1] == 1) 
        print (0).to_s
        print (col-1).to_s
        print "entro 6 "
        aliveCells+=1
    end
    print "<"
     print (@board[0][col]).to_s
     print ">"
    if (@board[0][col] == 1) 
        print (0).to_s
        print (col).to_s
        print "entro 7 "
        aliveCells+=1
    end
    print "<"
     print (@board[0][col+1]).to_s
     print ">"
    if (@board[0][col + 1] == 1) 
        print (0).to_s
        print (col+1).to_s
        print "entro 8 "
        aliveCells+=1
    end
    print ","
    print aliveCells
    print ")"
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