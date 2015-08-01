$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "upload_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "upload_engine"
  s.version     = UploadEngine::VERSION
  s.authors     = ["JoshS"]
  s.email       = ["wolfpack@vulk.co"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of UploadEngine."
  s.description = "TODO: Description of UploadEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
