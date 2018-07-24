require 'uri'
require 'net/http'
require 'net/https'
require 'json'


module CryptoControl
  class QueryAPI
    def initialize(apiKey, proxyURL = nil)
      @apiKey = apiKey
      @proxyURL = proxyURL
    end


    def fetch (url)
      host = @proxyURL ? @proxyURL : 'https://cryptocontrol.io/api/v1/public'
      url = URI.parse("#{host}#{url}")

      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      headers = {
        'content-type' =>'application/json',
        'x-api-key' => @apiKey
      }

      req = Net::HTTP::Get.new(url.to_s, initheader = headers)
      res = https.request(req)
      JSON.parse(res.body)
    end


    def getKeyDetails
      fetch '/'
    end


    def getTopNews(lang = "en")
      fetch "/news?language=#{lang}"
    end


    def getLatestNews(lang = "en")
      fetch "/news?latest=true&language=#{lang}"
    end


    def getTopNewsByCategory(lang = "en")
      fetch "/news/category?language=#{lang}"
    end


    def getTopNewsByCoin(coin, lang = "en")
      fetch "/news/coin/#{coin}?language=#{lang}"
    end


    def getLatestNewsByCoin(coin, lang = "en")
      fetch "/news/coin/#{coin}?language=#{lang}&latest=true"
    end


    def getTopNewsByCoinCategory(coin, lang = "en")
      fetch "/news/coin/#{coin}/category?language=#{lang}"
    end


    def getTopRedditPostsByCoin(coin, lang = "en")
      fetch "/reddit/coin/#{coin}?language=#{lang}"
    end


    def getLatestRedditPostsByCoin(coin, lang = "en")
      fetch "/reddit/coin/#{coin}?language=#{lang}&latest=true"
    end


    def getTopTweetsByCoin(coin, lang = "en")
      fetch "/tweets/coin/#{coin}?language=#{lang}"
    end


    def getLatestTweetsByCoin(coin, lang = "en")
      fetch "/tweets/coin/#{coin}?language=#{lang}&latest=true"
    end


    def getTopFeedByCoin(coin, lang = "en")
      fetch "/feed/coin/#{coin}?language=#{lang}"
    end


    def getLatestFeedByCoin(coin, lang = "en")
      fetch "/feed/coin/#{coin}?language=#{lang}&latest=true"
    end


    def getTopItemsByCoin(coin, lang = "en")
      fetch "/all/coin/#{coin}?language=#{lang}&latest=true"
    end


    def getLatestItemsByCoin(coin, lang = "en")
      fetch "/all/coin/#{coin}?language=#{lang}&latest=true"
    end

    def getCoinDetails(coin)
      fetch "/details/coin/#{coin}"
    end
  end
end