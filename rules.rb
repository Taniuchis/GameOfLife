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


		# left corner  top
        if (row == 0 && col == 0) 

            #top
            if (@@board[@@board_size - 1][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[@@board_size - 1][0] == 1) 
                aliveCells+=1
            end
            if (@@board[@@board_size - 1][1] == 1) 
                aliveCells+=1
            end

            #same row 
            if (@@board[row][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row][col + 1] == 1) 
                aliveCells+=1
            end

            #under
            if (@@board[row + 1][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col + 1] == 1) 
                aliveCells+=1
            end

        end

        #rigth corner top
        if (row == 0 && col == @@board_size - 1) 

            #top
            if (@@board[@@board_size - 1][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[@@board_size - 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[@@board_size - 1][0] == 1) 
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

        end

        #left corner down
        if (row == @@board_size - 1 && col == 0) 

            #top
            if (@@board[row - 1][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row - 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row - 1][col + 1] == 1) 
                aliveCells+=1
            end

            #same row 
            if (@@board[row][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row][col + 1] == 1) 
                aliveCells+=1
            end

            #under
            if (@@board[0][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[0][col] == 1) 
                aliveCells+=1
            end
            if (@@board[0][col + 1] == 1) 
                aliveCells+=1
            end

        end

        #rigth corner down
        if (row == @@board_size - 1 && col == @@board_size - 1) 

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

        end

        #borde central superior
        if (row == 0 && col != 0 && col != @@board_size - 1) 
            if (@@board[@@board_size - 1][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[@@board_size - 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[@@board_size - 1][col + 1] == 1) 
                aliveCells+=1
            end

            #same row 
            if (@@board[row][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row][col + 1] == 1) 
                aliveCells+=1
            end

            #under
            if (@@board[row + 1][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col + 1] == 1) 
                aliveCells+=1
            end
        end

        #borde central inferior
        if (row == @@board_size - 1 && col != 0 && col != @@board_size - 1) 
            if (@@board[row - 1][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row - 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row - 1][col + 1] == 1) 
                aliveCells+=1
            end

            #same row 
            if (@@board[row][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row][col + 1] == 1) 
                aliveCells+=1
            end

            #under
            if (@@board[0][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[0][col] == 1) 
                aliveCells+=1
            end
            if (@@board[0][col + 1] == 1) 
                aliveCells+=1
            end
        end

        #borde izquierdo
        if (col == 0 && row != @@board_size - 1 && row != 0) 
            if (@@board[row - 1][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row - 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row - 1][col + 1] == 1) 
                aliveCells+=1
            end

            #same row 
            if (@@board[row][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row][col + 1] == 1) 
                aliveCells+=1
            end

            #under
            if (@@board[row + 1][@@board_size - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col + 1] == 1) 
                aliveCells+=1
            end
        end

        # borde derecho
        if (col == @@board_size - 1 && row != 0 && row != @@board_size - 1) 
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
            if (@@board[row + 1][col - 1] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][col] == 1) 
                aliveCells+=1
            end
            if (@@board[row + 1][0] == 1) 
                aliveCells+=1
            end
        end



		currentCell = @@board[coorx][coory];
		# print coorx
		# print ".."
		# print coory
		# print "...celulas vivas..."
		# puts aliveCells
        if (currentCell == 1 && aliveCells < 2) 
        	#puts "entro1"
            return 0
        end
        if (currentCell == 1 && aliveCells > 3) 
        	#puts "entro2"
            return 0
        end
        if (currentCell == 1 && (aliveCells >= 2 || aliveCells <= 3)) 
        	#puts "entro3"
            return 1
        end
        if (currentCell == 0 && aliveCells == 3) 
        	#puts "entro4"
            return 1
        end
        return 0
		
	end

end
