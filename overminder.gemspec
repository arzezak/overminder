lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "overminder/version"

Gem::Specification.new do |spec|
  spec.name          = "overminder"
  spec.version       = Overminder::VERSION
  spec.authors       = ["Ariel Rzezak"]
  spec.email         = ["arzezak@gmail.com"]
  spec.summary       = "Overmind rake tasks."
  spec.description   = "Overmind rake tasks for Ruby on Rails projects."
  spec.homepage      = "https://github.com/arzezak/overminder"
  spec.license       = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
