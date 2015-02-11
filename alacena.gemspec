# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alacena/version'

Gem::Specification.new do |spec|
  spec.name          = "alacena"
  spec.version       = Alacena::VERSION
  spec.authors       = ["David Padilla"]
  spec.email         = ["david@padilla.cc"]
  spec.summary       = %q{Key-Value store written in Ruby. Just because.}
  spec.description   = %q{Key-Value store written in Ruby. Just because.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
