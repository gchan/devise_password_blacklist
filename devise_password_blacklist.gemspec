# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_password_blacklist/version'

Gem::Specification.new do |spec|
  spec.name          = 'devise_password_blacklist'
  spec.version       = DevisePasswordBlacklist::VERSION
  spec.authors       = ['Gordon Chan']
  spec.email         = ['developer.gordon+github@gmail.com']

  spec.summary       = 'Password blacklisting for Devise.'
  spec.description   = 'Password blacklisting for Devise. ' \
    'Checks passwords against a list of 100,000 common passwords.'
  spec.homepage      = 'https://www.github.com/gchan/devise_password_blacklist'
  spec.license       = 'MIT'

  spec.files = Dir['lib/**/*.rb'] +
               %w(devise_password_blacklist.gemspec CHANGELOG.md LICENSE.txt README.md)

  spec.bindir        = 'bin'
  spec.require_paths = ['lib']
  spec.platform      = Gem::Platform::RUBY

  spec.required_ruby_version = '~> 2.0'

  spec.add_runtime_dependency 'devise'
  spec.add_runtime_dependency 'password_blacklist', '~> 0.1.0'

  spec.add_development_dependency 'activemodel'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0.0'

  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'simplecov', '~> 0.12.0'
  spec.add_development_dependency 'rubocop', '~> 0.47.1'
  spec.add_development_dependency 'coveralls', '~> 0.8.18'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.4'
  spec.add_development_dependency 'benchmark-ips', '~> 2.7.2'
end
