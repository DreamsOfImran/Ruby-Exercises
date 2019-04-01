class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    legal? && sides.uniq.length == 1
  end

  def isosceles?
    legal? && sides.uniq.length <= 2
  end

  def scalene?
    legal? && sides.uniq.length == 3
  end
  
  def legal?
    sides.sort.take(2).sum > sides.max
  end
end