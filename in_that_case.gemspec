# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'in_that_case/version'

Gem::Specification.new do |spec|
  spec.name          = "in_that_case"
  spec.version       = InThatCase::VERSION
  spec.authors       = ["Jimmy Börjesson"]
  spec.email         = ["alcesleo@gmail.com"]

  spec.summary       = %q{Convert between different capitalization styles.}
  spec.description   = %q{in_that_case aims to be a well behaved unix tool that can convert between for example camelCase and snake_case.}
  spec.homepage      = "https://github.com/alcesleo/in_that_case"
  spec.license       = "MIT"

  spec.files         = Dir['Gemfile', 'LICENSE.txt', 'README.md', 'Rakefile', 'exe/*', 'in_that_case.gemspec', 'lib/**/*']
  spec.bindir        = "exe"
  spec.executables   = "itc"
  spec.require_paths = ["lib"]

  spec.add_dependency "docopt"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
