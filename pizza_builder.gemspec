Gem::Specification.new do |s|
  s.name        = 'pizza_builder'
  s.homepage    = ""
  s.version     = '0.0.0'
  s.date        = '2016-09-12'
  s.summary     = "Summary"
  s.description = "Description"
  s.authors     = ["Author"]
  s.email       = 'email@example.com'
  s.files       = Dir["lib/**/*"]
  s.license     = 'MIT'

  s.add_development_dependency 'pry'
  s.add_runtime_dependency 'sequel'
  s.add_runtime_dependency 'hecks'
  s.add_runtime_dependency 'mysql2'

  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'simplecov'

end
