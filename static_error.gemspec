Gem::Specification.new do |s|
  s.name        = 'static_errors'
  s.version     = '0.0.7'
  s.date        = '2014-01-05'
  s.summary     = "Static Errors"
  s.description = "Saves dynamic pages as a static error file"
  s.authors     = ["shogarth"]
  s.email       = 'shogarth@shogarth.com'
  s.files       = ["README", "lib/static_errors.rb", "lib/tasks/railtie.rb", "lib/tasks/static_errors.rake"]
  s.homepage    = "http://shogarth.com"
  s.license     = 'Copyright 2014 - All Rights Reserved'
  s.add_runtime_dependency "mechanize"
end