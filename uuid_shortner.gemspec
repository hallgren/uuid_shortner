# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uuid_shortner/version'

Gem::Specification.new do |spec|
  spec.name          = "uuid_shortner"
  spec.version       = UuidShortner::VERSION
  spec.authors       = ["Morgan Hallgren"]
  spec.email         = ["morgan.hallgren@upptec.se"]
  spec.description   = %q{shorten a uuid to a shorter representation and back}
  spec.summary       = %q{shorten a uuid to a shorter representation and back}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "uuid"
  
end
