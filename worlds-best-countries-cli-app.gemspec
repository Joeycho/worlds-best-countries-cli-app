require_relative "./lib/worlds_best_countries/version"

Gem::Specification.new do |spec|
  spec.name          = "worlds-best-countries"
  spec.version       = WorldsBestCountries::VERSION
  spec.authors       = ["'Joey Cho'"]
  spec.email         = ["'cjy12182000@naver.com'"]

  spec.summary       = "Best 10 countries to visit in 2018"
  spec.description   = "Provides details on the Lonely Planet 10 best countries"
  spec.homepage      = "http://google.com"
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end
