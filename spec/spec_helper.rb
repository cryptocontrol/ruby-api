require "bundler"
Bundler.setup

require "rspec"
require "crypto-news-api"
require "support/matchers"


Rspec.configure do |config|
  config.include NewGem::Spec::Matchers
end