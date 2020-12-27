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
teams.post('hello<br>world')
```

Or

```bash
$ TEAMS_WEBHOOK_URL=https://outlook.office.com/webhook/... bundle exec ruby examples/post/post.rb
```

## Options

```ruby
teams.post('hello',
  summary: 'world', # default is 1st argument ( Ex. hello )
  text2html: true,  # default is false, \n to <br> and autolink
  title: 'Title'    # default is blabk
  )
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
