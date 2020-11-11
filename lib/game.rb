require 'set'
require_relative 'board'

class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turn = 1
    @grid = [%w[a1 a2 a3], %w[b1 b2 b3], %w[c1 c2 c3]]
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
    @board = Board.new(@grid)
  end

  def valid_moves
    [*@grid[0], *@grid[1], *@grid[2]]
  end

  def move_valid?(move)
    valid_moves.include?(move)
  end

  def move_legal?(move)
    return false if !move_valid?(move) or @player_one.moves.include?(move) or @player_two.moves.include?(move)

    true
  end

  def current_player
    @turn.odd? ? @player_one : @player_two
  end

  def set_turn
    @turn += 1
  end

  def make_move
    message = "#{current_player.name}'s turn - you're #{current_player.type}"
    move = yield message

    if move_legal?(move)
      current_player.moves << move
      @board.update(move, current_player)
    else
      system('clear')
      @board.draw
      make_move { yield 'INVALID MOVE!!!. '.concat(message) }
    end
  end

  def win?(player)
    if player.moves.length >= 3
      @winning_cases.each do |item|
        return true if item.subset?(player.moves.to_set)
      end
    end
    false
  end

  def start
    while @turn <= valid_moves.length
      system('clear')
      @board.draw
      instruction = "\nEnter your move, e.g (A1, B3) => "

      make_move do |message|
        yield message + instruction
      end
      system('clear')

      return "#{current_player.name} has won the game." if win?(current_player)

      set_turn
    end
    @board.draw
    'Uh! uh!! The game is a tie'
  end
end
