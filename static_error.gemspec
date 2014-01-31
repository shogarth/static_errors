Gem::Specification.new do |s|
  s.name        = 'static_errors'
  s.version     = '1.0.0'
  s.date        = '2014-01-05'
  s.summary     = "Static Errors"
  s.description = "Saves dynamic pages as a static error file"
  s.authors     = ["shogarth"]
  s.email       = 'shogarth@shogarth.com'
  s.files       = ["README.md", "lib/static_errors.rb", "lib/static_errors/railtie.rb", "lib/static_errors/tasks/static_errors.rb"]
  s.homepage    = "http://shogarth.com"
  s.license     = 'Copyright 2014 - All Rights Reserved'
  s.add_runtime_dependency "mechanize"
end