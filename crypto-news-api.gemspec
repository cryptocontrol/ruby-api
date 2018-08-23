Gem::Specification.new do |s|
  s.name        = "crypto-news-api"
  s.version     = "1.3.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steven Enamakel"]
  s.email       = ["enamakel@cryptocontrol.io"]
  s.homepage    = "http://github.com/cryptocontrol/ruby-api"
  s.summary     = "Crypto News API"
  s.license     = "Apache-2.0"
  s.description = "Client to get a crypto newsfeed in your app from the CryptoControl API"

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "crypto-news-api"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["crypto-news-api"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end