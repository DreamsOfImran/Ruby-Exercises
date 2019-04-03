class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.sort
  end

  def match(words)
    words.select { |w| (w.downcase.chars.sort == @letters) && (w.downcase != @word) }
  end
end
