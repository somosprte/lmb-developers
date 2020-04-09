[![Gem Version](https://badge.fury.io/rb/lmb-developers.svg)](http://badge.fury.io/rb/lmb-developers)
[![Maintainability](https://api.codeclimate.com/v1/badges/379c8d6d26abf532b045/maintainability)](https://codeclimate.com/github/somosprte/lmb-developers/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/379c8d6d26abf532b045/test_coverage)](https://codeclimate.com/github/somosprte/lmb-developers/test_coverage)

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

# Pass environment and api_key to configure. Note: Use ENV variables to protect data in production environment
Lmb::Developers.configure('environment', ENV['LMB_API_KEY'])

```

The environment can be 'TEST' or 'PROD'.

You will need an API KEY that can be obtained at [Leroy Merlin Brazil Developer's Portal](https://developers.leroymerlin.com.br)

### Example

```ruby

#config/initilizers/lmb_developers.rb
Lmb::Developers.configure('DEV', ENV['LMB_API_KEY'])

#app/controller/login.rb
Lmb::Developers::Auth.login("ldap_username", "ldap_password")

```

### Methods

Ldap Login

```ruby
Lmb::Developers::Auth.login("ldap_username", "ldap_password", "ldap_usertype = employee")
```

## Contributing

1. Fork it ( https://github.com/somosprte/lmb-developers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

We are always keen to learn so please feel free to create an issue with code reviews, suggestions and possible refactorings.

## TODOS

- Docs
- Tests
- Other Methods
