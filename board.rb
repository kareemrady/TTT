require_relative "player"
require 'pry'
class Board
    attr_reader :squares_map, :all_squares, :player1, :player2
    attr_accessor :available_squares
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @squares_map = {}
        @all_squares = (1..9).to_a
        create_squares_map
        @available_squares = @all_squares
    end

    def save_player_selection(square_num, player)
        player.insert_selection(square_num)
        remove_selection_from_board(square_num)
    end

    private
    def create_squares_map
        squares_coord = [0,1,2]
        all_squares = squares_coord.repeated_permutation(2).to_a
        all_squares.each_with_index {|item, index| squares_map[index+1] = item }
        squares_map
    end
    def find_player_letter(player)
        player.letter_selection
    end
    def remove_selection_from_board(square_num)
        deleted_square = squares_map.delete(square_num)
        available_squares = all_squares - [square_num]
        binding.pry
    end
    def return_selected_squares(player)
        player.selected_squares
    end
end