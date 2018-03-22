module FoulBall
  def self.fair?(text = "")
    return true if text.nil? || text.empty?
    down_text = text.downcase
    # configuration.banned_words.none? { |w| down_text.include?(w.downcase) }
    configuration.banned_words.none? { |w| /\W+#{w.downcase}\W+/.match(down_text) != nil }
  end

  def self.foul(text)
    return [] if text.nil? || text.empty?
    down_text = text.downcase
    # configuration.banned_words.select { |w| down_text.include?(w.downcase) }
    words = configuration.banned_words.select { |w| /\W+#{w.downcase}\W+/.match(down_text) }.compact
    words.collect { |w| w[0] }
  end
end
