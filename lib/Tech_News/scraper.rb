require 'nokogiri'
require 'open-uri'
require 'pry'



    html = "https://newsroom.intel.com/"
    scraper = {}
    doc = Nokogiri::HTML(open(html))
    doc.css(".container").each do |news|

    

    newsroom = news.css(".container").text
    
    scraper[newsroom.to_sym] = {
    :icon => doc.css("div a img").attribute('src').value,
    :title => doc.css("div.post-title").first.text.strip,
    :url => doc.css("div.post-title").first.text.strip,
    :date => doc.css(".post-timestamp").first.text.strip,
    }
    newsroom
    binding.pry
end
