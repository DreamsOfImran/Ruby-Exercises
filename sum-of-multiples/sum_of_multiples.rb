class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(input)
    result = (1..(input - 1)).find_all do |value|
      @multiples.map { |i| (value % i).zero? }.any? true
    end
    result.sum
  end
end
