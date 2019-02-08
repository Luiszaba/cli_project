require 'nokogiri'
require 'open-uri'
require 'pry'


class Newsroom
    attr_accessor :icon, :date, :title, :url

    @@all = []

def initialize
    arrange_scrape
    @@all << self
end

def self.all
    @@all
end

def self.save
    @@all << self
end

def arrange_scrape
    html = "https://newsroom.intel.com/"
    scraper = {}
    doc = Nokogiri::HTML(open(html))
    doc.css(".container").each do |news|
        binding.pry
    newsroom = news.css(".container").text
    scraper[newsroom.to_sym] = {
    :icon => doc.css("div a img").attribute('src').value,
    :title => doc.css("div.post-title").first.text.strip,
    :url => doc.css("div.post-title").first.text.strip,
    :date => doc.css(".post-timestamp").first.text.strip,
    }
end
    newsroom

 end
end