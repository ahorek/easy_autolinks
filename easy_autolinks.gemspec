# encoding: utf-8
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'easy_autolinks'
  gem.version       = EasyAutolinks::VERSION
  gem.authors       = ['Pavel Rosicky']
  gem.email         = 'mail@mail.cz'
  gem.description   = 'autolinking'
  gem.summary       = 'A fast autolinking library'
  gem.homepage      = "https://github.com/ahorek/easy_autolinks"
  gem.platform      = defined?(JRUBY_VERSION) ? 'java' : Gem::Platform::RUBY
  gem.license       = 'MIT'

  gem.files         = Dir.glob('**/*').select{ |e| File.file? e } - ["easy_autolinks-0.1.gem"] #`git ls-files`.split("\n")
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/.*\.rb})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9.3'
  gem.extensions = 'ext/easy_autolinks/extconf.rb'

  gem.add_development_dependency 'bundler', '~> 0'
  gem.add_development_dependency 'rake', '~> 0'
  gem.add_development_dependency("activesupport", ["< 4.0"])
end
