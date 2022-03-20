# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.7.3'

gem 'json', '~> 2.6', '>= 2.6.1'                                  # Ensure support for JSON
gem 'rake', '~> 13.0', '>= 13.0.6'                                # Rake tasks

group :development do
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'                           # Resolve OpenSSH problems with capistrano
  gem 'capistrano', '~> 3.14', :require => false                  # Deployment
  gem 'capistrano-bundler', '~> 2.0', :require => false           # Capistrano bundler integration
  gem 'ed25519', '>= 1.2', '< 2.0'                                # Resolve OpenSSH problems with capistrano
  gem 'rubocop', :require => false                                # Ruby code style checker
  gem 'rvm1-capistrano3', :require => false                       # Capistrano rvm integration
end
