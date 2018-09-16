require_relative 'Game_of_life'

class Rules < Game_Life

	def check_rules(coorx, coory)
		 aliveCells = 0
		 row = coorx
		 col = coory
		#middle cells
		if (row != 0 && row != @@board_size - 1 && col != 0 && col != @@board_size - 1) 
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

		  end
		currentCell = @@board[coorx][coory];
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
