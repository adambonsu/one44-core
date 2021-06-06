# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'one44-core/version'

Gem::Specification.new do |s|
  s.name                  = 'one44-core'
  s.version               = One44::VERSION
  s.summary               = 'You provide the math problems. It marks your answers'
  s.description           = 'Marks math problems'
  s.authors               = ['Adam Bonsu']
  s.email                 = 'adam@bonsu.io'
  s.files                 = Dir['lib/**/*'] + Dir['Gemfile*']
  s.homepage              = 'https://github.com/adambonsu/one44-core'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.7.0'
end
