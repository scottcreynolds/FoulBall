require 'foul_ball/the_words'

module FoulBall
  class Configuration
    attr_accessor :banned_words
    extend TheWords

    def initialize
      @banned_words = []
    end

    def self.load_defaults
      conf = Configuration.new.tap do |c|
        c.banned_words = default_banned_words
      end
    end

  end
end