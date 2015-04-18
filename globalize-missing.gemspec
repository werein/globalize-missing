# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'globalize/missing/version'

Gem::Specification.new do |spec|
  spec.name          = "globalize-missing"
  spec.version       = Globalize::Missing::VERSION
  spec.authors       = ["Jiri Kolarik"]
  spec.email         = ["jiri.kolarik@imin.cz"]
  spec.description   = %q{Globalize will not be creating empty translation by default}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/werein/globalize-missing"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "LICENSE.txt", "Rakefile", "README.rdoc"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'globalize', '>= 4.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
