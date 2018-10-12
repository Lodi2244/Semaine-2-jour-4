require 'rubygems'
require 'nokogiri'
require "open-uri"


@page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600"))

def deputy_name

deputy_name = []
 puts deputy_name = @page.css("h2.titre_normal").map { |x|
  x.text }
end

#deputy_name

def deputy_email

  deputy_email  = []
   puts deputy_email  = @page.css("a.ann_mail").map { |x| x["href"]
     #if x =~ /(tel)/
    #puts x
     #end
   }
   #.map { |x| x[7..-1]
     #}
end

deputy_email
