# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'workflow/sequel/version'

Gem::Specification.new do |spec|
  spec.name          = 'workflow-sequel'
  spec.version       = Workflow::Sequel::VERSION
  spec.authors       = ['Tobias L. Maier']
  spec.email         = ['tobias.maier@baucloud.com']
  spec.summary       = 'Adds support for the Sequel ORM to the workflow gem'
  spec.homepage      = 'https://github.com/tmaier/workflow-sequel'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'workflow', '~> 1.1'
  spec.add_runtime_dependency 'sequel', '~> 4.13'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.required_ruby_version = '>= 1.9.2'
end
