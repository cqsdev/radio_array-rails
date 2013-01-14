$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "radio_array/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "radio_array"
  s.version     = RadioArray::VERSION
  s.authors     = ["David Biagi", "Will Gray"]
  s.email       = ["david.biagi@vanderbilt.edu"]
  s.homepage    = "http://cqs.mc.vanderbilt.edu"
  s.summary     = "Quickly and easily create multiple fields in a form that have the same options for selection via radio buttons."
  s.description = "RadioArray is a rails form helper that provides forms with the f.radio_array method. It accepts a list of fields, a common set of options to apply to the radio buttons, a hash of rails options and a has of html options as the arguments."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.9"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
