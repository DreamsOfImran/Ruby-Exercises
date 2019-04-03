class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @digits.length

    digits = @digits
    slice_array = []
    until digits.length < slice_length
      slice_array << digits[0..slice_length - 1]
      digits = digits[1..-1]
    end
    slice_array
  end
end
