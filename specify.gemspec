# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'specify/version'

Gem::Specification.new do |spec|
  spec.name          = 'specify'
  spec.version       = Specify::VERSION
  spec.authors       = ['Jeff Nyman']
  spec.email         = ['jeffnyman@gmail.com']
  spec.summary       = %q{Description Language Specification and Execution Engine}
  spec.description   = %q{
    Specify is a test framework that is designed to treat testing as a
    design activity by allowing requirements to be defined as tests.
    Those tests can then be executed via an automation layer. This is
    the basis of creating executable specifications.
  }
  spec.homepage      = 'https://github.com/jnyman/specify'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.required_ruby_version     = '>= 2.0.0'
  spec.required_rubygems_version = '>= 1.8.29'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'gherkin', '~> 2.12'
  spec.add_runtime_dependency 'rspec', '~> 3.0'

  spec.post_install_message = %{
(::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::)

  Specify #{Specify::VERSION} has been installed.

(::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::)
  }
end
