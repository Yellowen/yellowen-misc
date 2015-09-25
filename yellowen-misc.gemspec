# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yellowen/misc/version'

Gem::Specification.new do |spec|
  spec.name          = "yellowen_misc"
  spec.version       = Yellowen::Misc::VERSION
  spec.authors       = ["Sameer Rahmani"]
  spec.email         = ["lxsameer@gnu.org"]

  spec.summary       = %q{A meta gem and a bundle of gems which we use mostly on development.}
  spec.description   = %q{A meta gem and a bundle of gems which we use mostly on development.}
  spec.homepage      = "https://github.com/Yellowen/yellowen_misc"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'hirb'
  spec.add_dependency 'binding_of_caller'
  spec.add_dependency 'better_errors'
  spec.add_dependency 'meta_request'
  spec.add_dependency 'annotate'
  spec.add_dependency 'pry-rails'
  spec.add_dependency 'quiet_assets'
  spec.add_dependency 'ruby-lint'
  spec.add_dependency 'awesome_print'
  spec.add_dependency 'pry-doc'
  spec.add_dependency 'method_source'
  spec.add_dependency 'rubocop'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
