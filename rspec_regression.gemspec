# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_regression/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_regression"
  spec.version       = RspecRegression::VERSION
  spec.authors       = ["Willian van der Velde"]
  spec.email         = ["mail@willian.io"]
  spec.summary       = %q{Keeps track of query regressions}
  spec.description   = %q{Keeps track of query regressions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty'
  spec.add_dependency 'awesome_print'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rails'

  spec.add_dependency 'hirb'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
