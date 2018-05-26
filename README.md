# Msteams::Ruby::Client

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

msteams = Msteams::Ruby::Client.new('<webhook url>')
msteams.post('hello')
```

Or

```bash
$ MSTEAMS_RUBY_CLIENT_WEBHOOK_URL=https://outlook.office.com/webhook/... examples/post/post.rb
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
