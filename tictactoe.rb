require_relative "player"
require_relative "board"
class TTT
    attr_reader :human_player, :computer_player, :board, :score
    def initialize(board)
        @board = board
        @human_player = board.player1
        @computer_player = board.player2
        @score = 0
    end
    def player_turn(player)
        puts "Please type in your selection"
        # puts "Available Selections are #{board.available_squares}"
        user_input = gets.chomp.to_i
        if selection_is_valid?(user_input)
            board.save_player_selection(user_input, player)
        end
    end
    def play
        player_turn(human_player)
        player_turn(computer_player)
    end
    private
    def selection_is_valid?(selection)
        board.available_squares.include?(selection)
    end
    
end

player1 = Player.new
cplayer = Player.new
board = Board.new(player1, cplayer)
game = TTT.new(board)
game.play
p board.available_squares
p board.squares_map

