# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hanami-runner/info'

Gem::Specification.new do |spec|
  spec.name          = "hanami-runner"
  spec.version       = HanamiRunner::Info::VERSION
  spec.authors       = ["apontini"]
  spec.email         = ["alberto.pontini@gmail.com"]
  spec.description   = %q{Adds the run command to Hanami CLI allowing to execute ruby code via CLI (much like Rails Runnes)}
  spec.summary       = %q{Adds the run command to Hanami CLI allowing to execute ruby code via CLI (much like Rails Runnes)}
  #spec.executables   << 'coms'
  spec.homepage      = "https://github.com/apontini/hanami-runner"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "hanami", "~> 1.3"
  spec.add_development_dependency "bundler", ">= 1.3.5"
end
