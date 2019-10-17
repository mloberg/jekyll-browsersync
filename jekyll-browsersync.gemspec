# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-browsersync/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-browsersync"
  spec.version       = Mlo::Jekyll::BrowserSync::VERSION
  spec.authors       = ["Matthew Loberg"]
  spec.email         = ["loberg.matt@gmail.com"]
  spec.summary       = "Add live reloading to Jekyll using Browsersync."
  spec.description   = "Add live reloading to Jekyll using Browsersync."
  spec.homepage      = "https://github.com/mloberg/jekyll-browsersync"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").grep(%r!^lib/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "jekyll", ">= 3.0.0", "< 5.0"
  spec.add_dependency "tty-which", "~> 0.4.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.0"
end
