# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "foul_ball/version"

Gem::Specification.new do |spec|
  spec.name          = "foul_ball"
  spec.version       = FoulBall::VERSION
  spec.authors       = ["Scott C. Reynolds"]
  spec.email         = ["scott@scottcreynolds.com"]

  spec.summary       = %q{Determine if some language is fair or foul.}
  spec.description   = %q{Given some input text and a set of rules/words, determine if the input contains foul language.}
  spec.homepage      = "https://github.com/scottcreynolds/FoulBall"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
