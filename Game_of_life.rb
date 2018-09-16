class Game_Life
	@@board_size = 5
	@@generation = 4
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
      @@auxboard = []

      # llenar tablero
      @@board_size.times do
        column = []
        @@board_size.times do
          column.push  Random.rand(2)
        end
        @@board.push column
     end

     # llenar tablero aux
      @@board_size.times do
        column = []
        @@board_size.times do
          column.push '0'
        end
        @@auxboard.push column
     end

	end

	def start
		empty_board
		for i in 0..@@generation-1
			for coorx in 0..@@board_size-1
	        	for coory in 0..@@board_size-1
	        		@@auxboard[coorx][coory] = Rules.new.check_rules(coorx, coory)
	        	end
	    	end
	    	@@board = @@auxboard
			puts "Generation " + (i + 1).to_s
			print_board
			puts
		end
	end
end