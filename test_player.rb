require "minitest/autorun"
require_relative "player"

class TestPlayer < MiniTest::Test
    
    @@human_player = Player.new
    @@computer_player = Player.new
    
    def test_counter_is_incremented_after_each_initialize
        assert_equal(2, Player.counter)
    end

    def test_can_instantiate_new_player
        assert_instance_of(Player, @@human_player)
        assert_instance_of(Player, @@computer_player)
    end

    def test_assign_letter_for_each_player
        assert_match(/X|O/, @@human_player.letter_selection)
        assert_match(/X|O/, @@computer_player.letter_selection)
    end
    def test_uniq_letter_is_assigned_to_each_player
        refute_equal(@@human_player.letter_selection, @@computer_player.letter_selection)
    end
    def test_insert_selection_to_player
        @@human_player.insert_selection(1)
        assert_includes(@@human_player.selected_squares, 1)
    end

   
end
