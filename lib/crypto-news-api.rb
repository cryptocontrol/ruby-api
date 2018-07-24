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
      res.body
    end


    def getKeyDetails
      fetch '/'
    end
  end
end