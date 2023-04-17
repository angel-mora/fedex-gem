# fedex_rates.gemspec
Gem::Specification.new do |s|
  s.name        = "fedex_rates"
  s.version     = Fedex::Rates::VERSION
  s.date        = "2023-04-16"
  s.summary     = "Ruby gem to get FedEx shipping rates"
  s.description = "A simple Ruby gem to connect to the FedEx webservice and get shipping rates"
  s.authors     = ["Angel Mora"]
  s.email       = "angelmomaa@gmail.com"
  s.files       = Dir["lib/**/*"]
  s.homepage    = "https://github.com/angel-mora/fedex-gem"
  s.license     = "MIT"

  s.add_dependency "httparty", "~> 0.18.1"
  s.add_dependency "nokogiri", "~> 1.12.5"
  s.add_dependency "builder", "~> 3.2.4"
end
