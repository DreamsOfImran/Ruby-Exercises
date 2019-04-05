class PhoneNumber
  def self.clean(phone_number)
    clean = phone_number.scan(/\d/).join
    clean = clean.gsub(/^1/, '')

    return nil unless clean.size == 10

    first, fourth = clean.chars.values_at(0, 3)
    [first, fourth].map(&:to_i).each { |i| return nil unless (2..9).cover?(i) }

    clean
  end
end
