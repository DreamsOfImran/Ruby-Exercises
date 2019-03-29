class Acronym
  def self.abbreviate(words)
    words.split(/[^a-zA-Z0-9]/).map { |word| word.chr }.join.upcase
  end
end