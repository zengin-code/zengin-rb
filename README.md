# ZenginCode

[![Circle CI](https://img.shields.io/circleci/project/zengin-code/zengin-rb.svg)](https://circleci.com/gh/zengin-code/zengin-rb)
[![Gem Version](https://badge.fury.io/rb/zengin_code.svg)](http://badge.fury.io/rb/zengin_code)

The ruby implementation of ZenginCode.

ZenginCode is datasets of bank codes and branch codes for japanese.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zengin_code'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zengin_code

## Usage

```ruby
require 'zengin_code'

ZenginCode::Bank.all => { '00001' => <#ZenginCode::Bank code, name, kana, hira, roma ... >, .... }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zengin-code/zengin-rb


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

