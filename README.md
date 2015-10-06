# Goraku

Goraku is API client for Chinachu(https://chinachu.moe/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'goraku'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install goraku

## Usage

```ruby
require 'goraku'

client = Goraku::Client.new(api_endpoint: "http://your.chinachu.host", login: "basic_user", passwprd: "basic_pass")
client.reserves # get reservation list json
```

See more infomations about Chinachu API here(https://github.com/kanreisa/Chinachu/wiki/REST-API)

## TODO

- spec, spec, spec!!!
- some api is not implemented
    - /recording/:programId/watch
    - /recorded/:programId/watch
- documentation

## LICENSE

WTFPL

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YasuhiroKinoshita/goraku. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

