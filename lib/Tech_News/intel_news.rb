require 'pry'
require 'nokogiri'
require 'open-uri'

class TechNews::News

    attr_accessor :title, :icon, :url

    @@all = []

def self.today
    scrape_news
end

def self.save
    @@all << self
end

def self.scrape_news
news = []
news << self.scrape_intel
news << self.scrape_amd
news << self.scrape_apple
news << self.scrape_wcctech
news << self.scrape_microsoft
news
end

def self.scrape_intel
    doc = Nokogiri::HTML(open("https://newsroom.intel.com/"))
binding.pry
    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip
    news
end

#Title = doc.search("div.post-title")
#Date = doc.search("div.post-timestamp")
#url = doc.search("a.post-link")


def self.scrape_amd
    doc = Nokogiri::HTML(open("https://www.amd.com/en/corporate/newsroom"))
    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip
    news
end

def self.scrape_apple
    doc = Nokogiri::HTML(open("https://www.apple.com/newsroom/"))
    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip
    news
end

def self.scrape_wcctech
    doc = Nokogiri::HTML(open("https://wccftech.com/"))
    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip
    news
end

def self.scrape_microsoft
    doc = Nokogiri::HTML(open("https://news.microsoft.com/category/press-releases/"))
    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip
    news
end
end
