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
		input.to_i-1
	end

	def move(pos,mark = "X")
		@board[pos] = mark
	end

	def position_taken?(pos)
		@board[pos] != " "
	end

	def valid_move?(pos)	
		if @board[pos] == " " && pos >= 0&& pos <= 8
			true
		else
			false
		end
	end

	def turn_count		
	    @board.count{|token| token == "X" || token == "O"}
	end

	def current_player
	   turn_count % 2 == 0 ? 'X' : 'O'
	end
	 

	def turn
		user_input = input_to_index(gets.chomp)
			if valid_move?(user_input)

				move(user_input, current_player)
			else
				turn
			end	
		display_board
	end

	def won?

	end




end