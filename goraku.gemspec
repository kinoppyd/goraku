# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'goraku/version'

Gem::Specification.new do |spec|
  spec.name          = "goraku"
  spec.version       = Goraku::VERSION
  spec.authors       = ["Kinoshita.Yasuhiro"]
  spec.email         = ["WhoIsDissolvedGirl+github@gmail.com"]

  spec.summary       = %q{Goraku is API client for Chinachu}
  spec.description   = %q{Goraku is API client for Chinachu}
  spec.homepage      = "https://github.com/YasuhiroKinoshita/goraku"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.require_paths = ["lib"]

  spec.license       = "WTFPL"

  spec.add_runtime_dependency "sawyer", "~> 0.6"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "wtfpl_init"
end
