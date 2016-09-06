lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-browsersync/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-browsersync"
  spec.version       = Mlo::Jekyll::BrowserSync::VERSION
  spec.authors       = ["Matthew Loberg"]
  spec.email         = ["loberg.matt@gmail.com"]
  spec.summary       = %q{Add live reloading to Jekyll using Browsersync.}
  spec.description   = %q{Add live reloading to Jekyll using Browsersync.}
  spec.homepage      = "https://github.com/mloberg/jekyll-browsersync"
  spec.license       = "MIT"

  spec.files         = [*Dir["lib/**/*.rb"], "README.md", "LICENSE"]
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", ">= 3.0.0", "~> 3.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.0"
end
