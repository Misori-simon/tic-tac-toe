require 'set'
require_relative 'board'

class Game
  attr_writer :current_move

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turn = 1
    @grid = [%w[a1 a2 a3], %w[b1 b2 b3], %w[c1 c2 c3]]
    @current_move = nil
    @winning_cases = [
      Set.new(@grid[0]),
      Set.new(@grid[1]),
      Set.new(@grid[2]),
      Set.new([@grid[0][0], @grid[1][0], @grid[2][0]]),
      Set.new([@grid[0][1], @grid[1][1], @grid[2][1]]),
      Set.new([@grid[0][2], @grid[1][2], @grid[2][2]]),
      Set.new([@grid[0][0], @grid[1][1], @grid[2][2]]),
      Set.new([@grid[0][2], @grid[1][1], @grid[2][0]])
    ]
    board_values_initializer
  end

  def board_values_initializer
    @board_values = {
      'a1' => "\s\s\s",
      'a2' => "\s\s\s",
      'a3' => "\s\s\s",
      'b1' => "\s\s\s",
      'b2' => "\s\s\s",
      'b3' => "\s\s\s",
      'c1' => "\s\s\s",
      'c2' => "\s\s\s",
      'c3' => "\s\s\s"
    }
  end

  def draw_board
    # Draws the game board to the concole
    puts "\n\n  -------------------"
    puts "A | #{@board_values['a1']} | #{@board_values['a2']} | #{@board_values['a3']} |"
    puts '  -------------------'
    puts "B | #{@board_values['b1']} | #{@board_values['b2']} | #{@board_values['b3']} |"
    puts '  -------------------'
    puts "C | #{@board_values['c1']} | #{@board_values['c2']} | #{@board_values['c3']} |"
    puts '  -------------------'
    puts "    1     2    3    \n\n"
  end

  def update_board(value)
    @board_values.each do |position|
      if value == position[0]
        @board_values[position[0].to_s] = @turn.odd? ? "\sX\s" : "\sO\s"
      end
    end
  end

  def valid_moves
    # Constructs an array that holds valid/allowed moves
    # based on cells of @grid matrix
    [*@grid[0], *@grid[1], *@grid[2]]
  end

  def move_valid?(move)
    # Checks if move is valid cell in @grid matrix
    valid_moves.include?(move)
  end

  def move_legal?(move)
    # Check if selected cell has not already been taken by either player
    return false if !move_valid?(move) or @player_one.moves.include?(move) or @player_two.moves.include?(move)

    true
  end

  def current_player
    # Returns supposed current_player player based on the value of @turn
    @turn.odd? ? @player_one : @player_two
  end

  def set_turn
    # Increments @turn in order to pass turn to other player
    @turn += 1
  end

  def make_move
    # Makes a move for current_player
    puts "It's #{current_player.name}'s turn"
    print 'Enter your move, e.g (A1, B3) => '
    current_move_getter
    move = @current_move

    if move_legal?(move)
      current_player.moves << move
      update_board(move)
    else
      system('clear')
      draw_board
      puts "\nINVALID INPUT!!!. Repeat turn."
      make_move
    end
  end

  def win?(move_set)
    # Checks if there's a winner after move is made
    if move_set.length >= 3
      @winning_cases.each do |item|
        return true if item.subset?(move_set)
      end
    end
    false
  end

  def current_move_getter
    @current_move = gets.chomp.strip.downcase
  end

  def start
    # Starting point of game
    tie = true

    while @turn <= valid_moves.length
      draw_board
      make_move
      system('clear')

      if current_player.moves.length >= 3 and win?(current_player.moves.to_set)
        puts "#{current_player.name} has won the game"
        tie = false
        break
      else
        set_turn
      end
    end
    puts 'Uh! uh!! The game is a tie' if tie
    draw_board
  end
end
