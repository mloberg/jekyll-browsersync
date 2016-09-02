$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))
require 'jekyll-browsersync/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-browsersync"
  spec.version       = Mlo::Jekyll::BrowserSync::VERSION
  spec.authors       = ["Matthew Loberg"]
  spec.email         = ["loberg.matt@gmail.com"]
  spec.summary       = %q{Add live reloading to Jekyll using Browsersync.}
  spec.description   = %q{Add live reloading to Jekyll using Browsersync.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.has_rdoc      = false
  spec.files         = Dir["lib/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", ">= 3.0.0", "~> 3.1"
end
