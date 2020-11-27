# BlinkShortener

Blink shortener is an API wrapper for the bl.ink (https://www.bl.ink/) that shortens any url.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blink_shortener'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install blink_shortener

## Usage

After installation, make sure you have an account on bl.ink. If you do not have an account yet, you can sign up here: https://www.bl.ink/

To use the api, enter the url you wish to shorten along with your blink email and password. For example:

```ruby
BlinkShortener::Shorten.new("https://google.com", "myemail@example.com", "mypassword").shorten
```

This will return a shortened url in a form similar to: `http://b.link/9vwdx`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/blink_shortener. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/blink_shortener/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BlinkShortener project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/blink_shortener/blob/master/CODE_OF_CONDUCT.md).
