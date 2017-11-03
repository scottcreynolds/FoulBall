require 'yaml'

module FoulBall
  def self.fair?(text)
    down_text = text.downcase
    configuration.banned_words.none? { |w| down_text.include?(w.downcase) }
  end

  def self.foul(text)
    down_text = text.downcase
    configuration.banned_words.select { |w| down_text.include?(w.downcase) }
  end
end