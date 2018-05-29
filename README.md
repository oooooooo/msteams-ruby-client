# Teams

[![Gem Version](https://badge.fury.io/rb/msteams-ruby-client.svg)](https://badge.fury.io/rb/msteams-ruby-client)

Ruby Wrapper Library to send requests to Microsoft Teams Webhooks.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'msteams-ruby-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install msteams-ruby-client

## Usage

```ruby
require 'msteams-ruby-client'

teams = Teams.new('<webhook url>')
teams.post('hello')
```

Or

```bash
$ MSTEAMS_RUBY_CLIENT_WEBHOOK_URL=https://outlook.office.com/webhook/... ruby examples/post/post.rb
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
