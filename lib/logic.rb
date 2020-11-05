require 'set'

class Player
  attr_reader :name, :type
  attr_accessor :moves

  def initialize(name, type)
    @name = name
    @type = type
    @moves = []
  end
end

class Game
  @grid = [
    %w[a1 a2 a3],
    %w[b1 b2 b3],
    %w[c1 c2 c3]
  ]
  @valid_moves = %w[a1 a2 a3 b1 b2 b3 c1 c2 c3]
  # @turn = 1
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

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def game_board()
    puts '----------------'
    puts '| A1 | A2 | A3 |'
    puts '----------------'
    puts '| B1 | B2 | B3 |'
    puts '----------------'
    puts '| C1 | C2 | C3 |'
    puts '----------------'
  end

  # def valid_moves
  #   [*@grid[0], *@grid[1], *@grid[2]]
  # end

  def my_valid?(move)
    return false unless @valid_moves.include?(move)
    return false if player_one.move.include?(move) || player_two.include?(move)

    true
  end

  def play(player)
    print 'Make your move e.g (A1, B2, C3): '
    move = gets.chomp.downcase
    if my_valid?(move)
      player.moves << current_input
    else
      puts 'Invalid move. Try again'
      play(player)
    end
  end

  def won?(moves)
    winning_cases.each do |item|
      return true if item.subset?(moves)
    end
    false
  end

  def start
    game_board
    turn = 1

    while turn < 9
      current_player = turn.odd? ? @player_one : @player_two
      play(current_player)

      if current_player.moves.length >= 3
        if won?(current_player.moves.to_set)
          puts "#{current_player.name} has won"
          break
        end
      end
      @turn += 1

    end
  end
end

player_one = Player.new('CY', 'X')
player_two = Player.new('Misori', 'O')

new_game = Game.new(player_one, player_two)
new_game.start