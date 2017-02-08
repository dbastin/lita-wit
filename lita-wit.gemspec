# frozen_string_literal: true
Gem::Specification.new do |spec|
  spec.name          = 'lita-wit'
  spec.version       = '0.1.3'
  spec.authors       = ['Damien Bastin']
  spec.email         = ['damien.bastin@gmail.com']
  spec.description   = 'A Lita handler for Wit.'
  spec.summary       = 'Receive structured intentions from unstructured sentences using a Lita bot and Wit.'
  spec.homepage      = 'https://github.com/dbastin/lita-wit'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.7'
  spec.add_runtime_dependency 'wit', '>= 4.0.0', '< 5.0.0'

  spec.add_development_dependency 'bundler', '>= 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'vcr'
end
