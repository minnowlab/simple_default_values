lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_default_values/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_default_values"
  spec.version       = SimpleDefaultValues::VERSION
  spec.authors       = ["ray"]
  spec.email         = ["frayay@gmail.com"]
  spec.summary       = %q{Simple default values on creation of ActiveRecord models.}
  spec.description   = %q{Simple default values on creation of ActiveRecord models.}
  spec.homepage      = "https://github.com/minnowlab/simple_default_values"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "sqlite3"
end
