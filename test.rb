require "test/unit"
require "player"

class TestTicTacToe < Test::Unit::TestCase
    @@human_player = new Player()
    @@computer_player = new Player()
    def can_instantiate_new_player
        assert_instance_of(Player, @@human_player)
    end
end
