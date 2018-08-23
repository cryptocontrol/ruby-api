require File.expand_path("../../lib/crypto-news-api", __FILE__)

api = CryptoControl::QueryAPI.new(ENV['CC_NEWS_API_KEY'])

api.enableSentiment

puts api.getKeyDetails

# Get top news
puts api.getTopNews

# get latest russian news
puts api.getLatestNews "ru"

# get top bitcoin news
puts api.getTopNewsByCoin "bitcoin"

# get top EOS tweets
puts api.getTopTweetsByCoin "eos"

# get top Ripple reddit posts
puts api.getLatestRedditPostsByCoin "ripple"

# get reddit/tweets/articles in a single combined feed for NEO
puts api.getTopFeedByCoin "neo"

# get latest reddit/tweets/articles (seperated) for Litecoin
puts api.getLatestItemsByCoin "litecoin"

# get details (subreddits, twitter handles, description, links) for ethereum
puts api.getCoinDetails "ethereum"