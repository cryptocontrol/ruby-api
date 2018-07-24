Gem::Specification.new do |s|
  s.name        = "crypto-news-api"
  s.version     = "1.0.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steven Enamakel"]
  s.email       = ["enamakel@cryptocontrol.io"]
  s.homepage    = "http://github.com/carlhuda/newgem"
  s.summary     = "Crypto News API"
  s.description = "Client to get a crypto newsfeed in your app from the CryptoControl API"

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "newgem"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["newgem"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end