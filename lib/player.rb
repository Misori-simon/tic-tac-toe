class Player
  attr_reader :name, :type
  attr_accessor :moves

  def initialize(name, type)
    @name = name
    @type = type
    @moves = []
  end
end
