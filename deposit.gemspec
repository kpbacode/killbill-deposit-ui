# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'deposit/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'killbill-deposit'
  s.version     = Deposit::VERSION
  s.authors     = 'Kill Bill core team'
  s.email       = 'killbilling-users@googlegroups.com'
  s.homepage    = 'https://killbill.io'
  s.summary     = 'Kill Bill Deposit UI mountable engine'
  s.description = 'Rails UI plugin for the Deposit plugin.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*'] + %w[MIT-LICENSE Rakefile README.md]
  s.test_files = Dir['test/**/*']

  s.add_dependency 'sass-rails'
  s.add_dependency 'rails', '~> 6.0.6'
  s.add_dependency 'js-routes'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jquery-datatables-rails'
  # See https://github.com/seyhunak/twitter-bootstrap-rails/issues/897
  s.add_dependency 'money-rails'
  s.add_dependency 'font-awesome-rails'
  s.add_dependency 'killbill-client'
  s.add_dependency 'bootstrap-sass', '~> 3.4.1'
  s.add_dependency 'sassc-rails', '>= 2.1.0'

  s.add_development_dependency 'gem-release'
  s.add_development_dependency 'json'
  s.add_development_dependency 'listen'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop', '~> 0.88.0' if RUBY_VERSION >= '2.4'
  s.add_development_dependency 'simplecov'
end
