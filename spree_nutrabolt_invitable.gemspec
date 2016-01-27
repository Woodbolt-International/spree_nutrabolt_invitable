# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_nutrabolt_invitable'
  s.version     = '3.0.4'
  s.summary     = 'Invites users from admin panel'
  s.description = 'Creates and sends a notification email to the invited user'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Alessio Rocco'
  s.email     = 'alessiorocco@nebulab.it'
  s.homepage  = 'http://nebulab.it'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus', '~> 1.1.0'
  s.add_dependency 'devise_invitable', '~> 1.5.5'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
