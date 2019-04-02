class Squares
  attr_reader :square_of_sum, :sum_of_squares, :difference

  def initialize(value)
    @square_of_sum = (value + 1).times.map.sum { |v| v = +v }**2

    @sum_of_squares = (value + 1).times.map.sum { |v| v = +v**2 }

    @difference = @square_of_sum - @sum_of_squares
  end
end
