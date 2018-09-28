require_relative 'Game_of_life'
class Death
	def live_die(aliveCells,currentCell ) 
    print "celula v/m"
    print currentCell
    print "vecinos"
    print aliveCells
    if (currentCell == 1 && aliveCells < 2) 
      return 0
    end
    if (currentCell == 1 && aliveCells > 3) 
      return 0
    end
    if (currentCell == 1 && (aliveCells >= 2 || aliveCells <= 3)) 
      return 1
    end
    if (currentCell == 0 && aliveCells == 3) 
      return 1
    end
    return 0
  end
end