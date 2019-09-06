require 'byebug'

class TicTacToe

	WIN_COMBINATIONS = [
	  [0,1,2],
	  [3,4,5],
	  [6,7,8],
	  [0,3,6],
	  [1,4,7],
	  [2,5,8],
	  [0,4,8],
	  [2,4,6],
	]

	def initialize
		@board = Array.new(9, " ")
	end

	def display_board
	    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
	    puts "-----------"
	    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
	    puts "-----------"
	    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end

	def input_to_index(input)
		@int_input = input.to_i
		@convert_to_array_pos = @int_input -1
	end

	def move(pos,mark)
		@board[pos] = mark
	end

	def position_taken?(pos)
		@board[pos] != " "
	end

	def valid_move?(pos)
		if @board[pos] == " "
			true
		else
			false
		end
	end

	def current_player
	    turn_count % 2 == 0 ? "X" : "O"
	end
	 
	def turn_count
	    @board.count{|token| token == "X" || token == "O"}
	end

	def turn
		puts "Please enter 1-9 to select a space"
		@turn = gets.strip
		@int_turn = input_to_index(@turn)
			if valid_move?(@int_turn)
				move(@int_turn, current_player)
				
				display_board
			else
				
			end	
	end


end