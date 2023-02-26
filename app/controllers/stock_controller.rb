class StockController < ApplicationController
    def index
      client = AlphaVantage::Client.new(key: 'QPYI9K6Q7GH37ZSS')
      @data = client.stock_time_series(symbol: 'TSLA', interval: 'daily')
    end
  end
  