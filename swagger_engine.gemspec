# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'swagger_engine/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'swagger_engine'
  s.version     = SwaggerEngine::VERSION
  s.authors     = ['batdevis']
  s.email       = ['batdevis@gmail.com']
  s.homepage    = 'https://github.com/batdevis/swagger_engine'
  s.summary     = 'Mount swagger-ui as rails engine.'
  s.description = 'Api docs inside your rails project.'
  s.license     = 'MIT'

  s.add_development_dependency('pry')
  s.add_development_dependency('rubocop')

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']
end
