# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crypto/version'

Gem::Specification.new do |spec|
  spec.name          = 'crypto'
  spec.version       = Crypto::VERSION
  spec.authors       = ['Tom Collier']
  spec.email         = ['tcollier@gmail.com']
  spec.summary       = %q{Solutions for http://cryptopals.com/ problems}
  spec.description   = %q{Solutions for http://cryptopals.com/ problems}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'overcommit'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov', '~> 0.7.1'
end
