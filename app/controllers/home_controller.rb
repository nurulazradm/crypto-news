class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    # Grab News
    url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    uri = URI(url)
    response = Net::HTTP.get uri
    @news = JSON.parse response

    # Grab Price
    price_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,MCO,EVN,NEO&tsyms=USD'
    price_uri = URI(price_url)
    price_response = Net::HTTP.get price_uri
    @prices = JSON.parse price_response

  end

  def prices

  end
end
