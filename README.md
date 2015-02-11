# Alacena

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

### Connect

    telnet 8080

### Set a value

Use the SET command with two arguments. First argument is the key, second argument
is the value to store.

    SET KEY, A value

### Get a value

Use the GET command with the KEY to retreive as the argument.

    GET KEY
    A value

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ottoman/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
