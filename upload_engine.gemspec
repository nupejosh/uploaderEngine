$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "upload_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "upload_engine"
  s.version     = UploadEngine::VERSION
  s.authors     = ["JoshS"]
  s.email       = ["wolfpack@vulk.co"]
  s.homepage    = ""
  s.summary     = "UploadEngine will handle uploads from javascript frontend frameworks"
  s.description = "The UploadEngine will use paperclip to handle downloads background jobs will handle processing before files are sent to Amazon S3"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "paperclip", "~> 4.3"

  s.add_development_dependency "sqlite3"
end
