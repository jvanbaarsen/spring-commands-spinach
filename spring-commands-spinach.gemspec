# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "spring-commands-spinach"
  spec.version       = "1.0.0"
  spec.authors       = ["Jeroen van Baarsen"]
  spec.email         = ["jeroenvanbaarsen@gmail.com"]
  spec.description   = %q{spinach command for spring}
  spec.summary       = %q{spinach command for spring}
  spec.homepage      = "http://github.com/jvanbaarsen/spring-commands-spinach"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "spring", ">= 0.9.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
