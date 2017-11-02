module FoulBall
  class Configuration
    attr_accessor :foul_words

    def initialize
      @foul_words = []
    end

    def self.load_defaults
      conf = Configuration.new.tap do |c|
        base_config = YAML.load_file('config/foul_words.yml')
        foul_words = base_config['banned_words']
        c.foul_words = foul_words
      end
    end
  end
end