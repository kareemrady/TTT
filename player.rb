class Player
    attr_reader :letter_selection, :selected_squares
    @@selections = ['X', 'O'].shuffle!
    @@counter = 0
    def initialize
        @letter_selection = @@selections[@@counter]
        @selected_squares = []
        @@counter += 1
    end
    def insert_selection(selected_square)
        selected_squares << selected_square
    end
    def self.counter
        @@counter
    end
    
end