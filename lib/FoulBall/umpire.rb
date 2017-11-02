require 'yaml'

module FoulBall
  def self.fair?(text)
    configuration.foul_words.none? { |w| text.include?(w) }
  end
end