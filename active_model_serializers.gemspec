# frozen_string_literal: true
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_model/serializer/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_model_serializers'
  spec.version       = ActiveModel::Serializer::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Steve Klabnik']
  spec.email         = ['steve@steveklabnik.com']
  spec.summary       = 'Conventions-based JSON generation for Rails.'
  spec.description   = 'ActiveModel::Serializers allows you to generate your JSON in an object-oriented and convention-driven manner.'
  spec.homepage      = 'https://github.com/rails-api/active_model_serializers'
  spec.license       = 'MIT'

  spec.files         = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.md', 'lib/**/*']
  spec.require_paths = ['lib']
  spec.executables   = []

  spec.required_ruby_version = '>= 2.1'

  spec.add_runtime_dependency 'activemodel'
  spec.add_runtime_dependency 'actionpack'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency 'railties'
  spec.add_development_dependency 'minitest'
  spec.add_runtime_dependency 'jsonapi-renderer'
  spec.add_runtime_dependency 'case_transform'


  # Soft dependency for pagination
  spec.add_development_dependency 'kaminari'
  spec.add_development_dependency 'will_paginate'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'grape'
  spec.add_development_dependency 'json_schema'
  spec.add_development_dependency 'rake'
end
