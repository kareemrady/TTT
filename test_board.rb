require "minitest/autorun"
require_relative "board"
require_relative "player"

class TestBoard < Minitest::Test
    def setup
        @board = Board.new
        @player = Player.new
    end
    def test_can_instantiate_board
        assert_instance_of(Board, @board)
        # p @board.all_squares
        # p @board.squares_map
    end
    def test_squares_map_is_created
        refute_empty(@board.squares_map)
        refute_empty(@board.all_squares)
        refute_empty(@board.available_squares)
    end
    def test_player_can_select_square_on_board
        @player.insert_selection(1)
        @board.save_player_selection(1)
        refute_includes(@board.available_squares, 1)
    end

end