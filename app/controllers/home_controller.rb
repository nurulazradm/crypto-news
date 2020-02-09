class HomeController < ApplicationController
  def index
    # Grab News
    cc = CryptoCompare.new
    @news = cc.news

    # Grab Volume
    cc = CryptoCompare.new
    @volumes = cc.totalvolfull
  end

  def prices
    @symbol = params[:symbol].upcase unless params[:symbol].nil? || params[:symbol].empty?

    # Grab Price
    if @symbol
      cc = CryptoCompare.new
      @price = cc.pricemultifull(@symbol)
    end
  end
end
