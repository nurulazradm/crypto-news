require 'net/http'
require 'json'

class CryptoCompare
  attr_reader :api_url

  def initialize
    @api_url = 'https://min-api.cryptocompare.com/data'
  end

  def news
    url = "#{@api_url}/v2/news/?lang=EN"
    uri = URI(url)
    response = Net::HTTP.get uri

    JSON.parse response
  end

  def pricemultifull(fsyms, tsyms='USD')
    url = "#{@api_url}/pricemultifull?fsyms=#{fsyms}&tsyms=#{tsyms}"
    uri = URI(url)
    response = Net::HTTP.get uri

    JSON.parse response
  end

  def totalvolfull(limit=10, tsyms='USD')
    url = "#{@api_url}/top/totalvolfull?limit=#{limit}&tsym=#{tsyms}"
    uri = URI(url)
    response = Net::HTTP.get uri

    JSON.parse response
  end
end
