require 'rubygems'
require 'nokogiri'
require "open-uri"


@page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

def trader

 currency_name = []
 currency_name = @page.css("a.currency-name-container.link-secondary").map { |x|
   x.text }
   price = []
   price = @page.css("a.price").map { |x|
     x.text }
    puts trader_hash = Hash[[currency_name,price].transpose ]
end

trader
