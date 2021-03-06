# FoulBall

Opinionated but configurable gem that checks some text against a list of "foul" words. I wrote it during Game 7 of the World Series.

*Note:* Not really meant for production, created more as a teaching tool for my team

[![Gem Version](https://badge.fury.io/rb/foul_ball.svg)](https://badge.fury.io/rb/foul_ball)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foul_ball'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install FoulBall

## Usage

```ruby
text_to_check = "some text with maybe bad words or phrases"

#just see if it has matching bad words
FoulBall.fair?(text_to_check)

#return an array of matching bad words
matched_words = FoulBall.foul(text_to_check)
```

## Configuration

A default set of words is already in place. You can add to or replace this list:

```ruby
# replace
FoulBall.configure do |f|
  f.banned_words = [badword]
end

# append
FoulBall.configure do |f|
  f.banned_words << "ooh this is bad"
end
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/scottcreynolds/FoulBall. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FoulBall project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/FoulBall/blob/master/CODE_OF_CONDUCT.md).
