class Transpose
  class << self
    def transpose(value)
      new(value).custom_transpose.strip
    end
  end

  def initialize(value)
    @value = value.split("\n")
    @value.map! do |row|
      row.split('')
    end
  end

  def custom_transpose
    @transpose = []

    @value.each_with_index do |row, r_index|
      row.each_with_index do |_col, c_index|
        @transpose[c_index] = [] unless @transpose[c_index]
        @transpose[c_index][r_index] = @value[r_index][c_index]
      end
    end

    output = ''

    @transpose.each do |row|
      row.each do |col|
        col = ' ' if col.nil?
        output << col
      end
      output << "\n"
    end
    output
  end
end
