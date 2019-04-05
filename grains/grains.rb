class Grains
  def self.square(square_position)
    raise ArgumentError if (square_position <= 0) || (square_position > 64)

    2**(square_position - 1)
  end

  def self.total
    total_grains = 0
    (1..64).each do |value|
      total_grains += square(value)
    end
    total_grains
  end
end
