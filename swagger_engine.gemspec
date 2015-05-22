$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "swagger_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "swagger_engine"
  s.version     = SwaggerEngine::VERSION
  s.authors     = ["batdevis"]
  s.email       = ["batdevis@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Mount swagger-ui as rails engine."
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  #s.add_dependency "rails", "~> 4.0.13"
end
