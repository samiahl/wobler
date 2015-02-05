# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wobler/version'

Gem::Specification.new do |spec|
  spec.name          = "wobler"
  spec.version       = Wobler::VERSION
  spec.authors       = ["Sami Åhl"]
  spec.email         = ["sami.ahl@cs.helsinki.fi"]
  spec.description   = %q{URL shortener}
  spec.summary       = %q{This gem provides an API for shortening your ugly long URL}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
