lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mojiru/version"

Gem::Specification.new do |spec|
  spec.name          = "mojiru"
  spec.version       = Mojiru::VERSION
  spec.authors       = ["aki77"]
  spec.email         = ["aki77@users.noreply.github.com"]

  spec.summary       = %q{Provides japanese conversion functionality for Strings using Ruby Refinements.}
  spec.description   = %q{Provides japanese conversion functionality for Strings using Ruby Refinements.}
  spec.homepage      = "https://github.com/aki77/mojiru"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
