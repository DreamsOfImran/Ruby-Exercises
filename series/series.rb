class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @digits.length

    digits = @digits
    slice_array = []
    digits.chars.each_cons(slice_length) { |arr| slice_array << arr.join }
    slice_array
  end
end
