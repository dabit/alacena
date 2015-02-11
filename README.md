# Alacena

[![Build Status](https://travis-ci.org/dabit/alacena.svg?branch=master)](https://travis-ci.org/dabit/alacena)

Key-Value store written in Ruby. Just because.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alacena'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alacena

## Usage

### Start

Start the server

    alacena start --port 8080

### Set a value

Make a POST request to /record to store a VALUE with KEY as the index.

    curl -d "key=KEY&value=VALUE" http://localhost:8080/record

Returns

    { key: KEY, status: ok }

### Get a value

Make a GET request to /record KEY on the path to retreive the stored value.

    curl http://localhost:8080/get/KEY

Returns

    { key: KEY, value: VALUE }

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ottoman/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
