class Board
  def initialize(grid)
    @cells = {}

    grid.each do |row|
      row.each do |cell|
        @cells[cell] = ' '
      end
    end
  end

  def draw
    puts '     1     2     3'
    puts '  -------------------'
    puts "A |  #{@cells['a1']}  |  #{@cells['a2']}  |  #{@cells['a3']}  |"
    puts '  -------------------'
    puts "B |  #{@cells['b1']}  |  #{@cells['b2']}  |  #{@cells['b3']}  |"
    puts '  -------------------'
    puts "C |  #{@cells['c1']}  |  #{@cells['c2']}  |  #{@cells['c3']}  |"
    puts '  -------------------'
  end

  def update(value, player)
    @cells[value] = player.type
  end
end
