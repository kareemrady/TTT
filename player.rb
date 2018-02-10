class Player
    attr_reader :letter_selection, :selected_squares
    @@selections = ['X', 'O'].shuffle!
    @@player_letter_selections = {}
    @@counter = 0
    def initialize()
        @letter_selection = @@selections[@@counter]
        @selected_squares = []
        @@counter += 1
    end
end