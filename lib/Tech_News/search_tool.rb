require 'open-uri'
require 'pry'
require 'nokogiri'

class Newsroom

    attr_accessor :title, :date, :icon, :url

@@all = []

def initialize
    @@all << self
end

def self.all
    @@all
end

html = open('html')
doc = Nokogiri::HTML(html)
binding.pry
news_article = doc.css("div. blade-item")
news_article.each do |articles|
    articles = {
        name: 
        value: 
    }
end

end




#Intel
#Title = doc.search("div.post-title")
#Date = doc.search("div.post-timestamp")
#url = doc.search("a.post-link")  << BROKEN!
