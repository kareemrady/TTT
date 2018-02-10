require "test/unit"
require_relative 'player'

class TestPlayer < Test::Unit::TestCase

    def can_initialize_player
        assert_instance_of(Player, Player.new())
    end
end