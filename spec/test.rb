require File.expand_path("../../lib/crypto-news-api", __FILE__)

api = CryptoControl::QueryAPI.new(ENV['CC_NEWS_API_KEY'])
puts api.getKeyDetails