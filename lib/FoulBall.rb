require 'FoulBall/configuration'
require 'FoulBall/version'

module FoulBall
  require 'FoulBall/umpire'

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.load_defaults
  end

  def self.reset
    @configuration = Configuration.load_defaults
  end

  def self.configure
    yield(configuration)
  end

end