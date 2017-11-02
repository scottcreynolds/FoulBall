module FoulBall
  class Configuration
    attr_accessor :foul_words

    def initialize
      @foul_words = []
    end

    def self.load_defaults
      conf = Configuration.new.tap do |c|
        c.foul_words = default_banned_words
      end
    end

    def self.default_banned_words
      # I am so sorry about this.
      # Sourced from https://github.com/LDNOOBW/List-of-Dirty-Naughty-Obscene-and-Otherwise-Bad-Words/blob/master/en
      # Somewhat more permissive/naive.
      %w(asshole fuck cunt nigger cocksucker faggot beaner kike)
    end
  end
end