require 'net/http'
require 'uri'
require 'json'
require'./coin.rb'

class Manager
  @@repo = {}
  def initialize
  initialize_repo
  end

  def initialize_repo
    response = web_scrap
    json = JSON.parse(response)
    for symbol, value in json
      coin = Coin.new(symbol, value["USD"], value["EUR"])
      @@repo[symbol] = coin
    end
  end

  def web_scrap
    url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,XRP,DASH,LTC&tsyms=USD,EUR"
    uri = URI(url)
    Net::HTTP.get(uri)
  end

  def coin_list
    @@repo.keys
  end

  def calculate(symbol, amount, to)
    coin = @@repo[symbol]
    amount*coin.send(to.to_sym)

  end

end
