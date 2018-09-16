class Game_Life
	@@board_size = 10
	def print_board
		@@board.each do |column|
         column.each do |card|
          print card
          print '  ' 
         end
        puts
        
      end
	end

	def  empty_board
      @@board = []
      # llenar tablero
      @@board_size.times do
        column = []
        @@board_size.times do
          column.push '0'
        end
        @@board.push column
     end
	end

	def start
		empty_board
		print_board
	end
end