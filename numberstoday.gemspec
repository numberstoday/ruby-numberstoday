Gem::Specification.new do |s|
  s.name        = 'numberstoday'
  s.version     = '0.0.1a'
  s.date        = '2015-12-14'
  s.summary     = 'Wrapper to numbers.today in Ruby'
  s.description = 'Wrapper to numbers.today in Ruby'
  s.authors     = ['Rafael Albuquerque']
  s.email       = 'me@rafael.pt'
  s.files       = [
    'lib/numberstoday.rb',
    'lib/numberstoday/endpoints.rb',
    'lib/numberstoday/utils.rb',
  ]
  s.homepage    = 'http://rubygems.org/gems/numberstoday'
  s.license     = 'MIT'

  s.add_runtime_dependency 'http', '~> 0'
end
