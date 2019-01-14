[![Gem Version](https://badge.fury.io/rb/lmb-developers.svg)](http://badge.fury.io/rb/lmb-developers)

# Lmb Developers

A ruby wrapper for the Leroy Merlin Brazil Developers API available at [Leroy Merlin Brazil Developer's Portal](https://developers.leroymerlin.com.br)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lmb-developers'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install lmb-developers

## Usage

### Configuration

```ruby

# Pass environment and api_key to configure
Lmb::Developers.configure('environment', 'api_key')

```

The environment can be 'TEST' or 'PROD'.

You will need an api_key that can be obtained at [Leroy Merlin Brazil Developer's Portal](https://developers.leroymerlin.com.br)

### Methods

Ldap Login

```ruby
Lmb::Developers::Auth.login("ldap_username", "ldap_password", "ldap_usertype = employee")
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/lmb-developers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

We are always keen to learn so please feel free to create an issue with code reviews, suggestions and possible refactorings.

## TODOS

- Docs
- Tests
- Other Methods
