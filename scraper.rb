require 'rubygems'
require 'nokogiri'
require "open-uri"
require "pry"


@page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
#binding.pry
def get_all_the_urls_of_val_doise_townhalls
 town_hall = []
  return town_hall = @page.css("a.lientxt").map { |link|
    link["href"].strip }.map { |town|
      town[1..-1] = "http://annuaire-des-mairies.com#{town}"
      }
      @town_hall = town_hall
end

#get_all_the_urls_of_val_doise_townhalls

#@town_hall = STDIN.gets

@page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/ableiges.html"))


def get_email_townhall_webpage

  emails = []
  @page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").map { |x|
    x.text.strip }.map { |x|
      if x =~ /(@)/
        emails.push(x)
    puts emails
  end
  }
end

get_email_townhall_webpage
