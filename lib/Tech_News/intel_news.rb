require 'pry'
require 'nokogiri'
require 'open-uri'

class TechNews::News

    attr_accessor :icon, :title, :url, :date

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
    html = "https://newsroom.intel.com/"
    doc = Nokogiri::HTML(open(html))
    scraper = []
    newsroom = doc.css(".container").text
    
    newsroom.each do |news|
        scraper_intel << {
    :icon => news.css("div a img").attribute('src').value,
    :title => news.css("div.post-title").first.text.strip,
    :url => news.css("div.post-title").first.text.strip,
    :date => news.css(".post-timestamp").first.text.strip
    }
end
scraper_intel
end

def self.scrape_amd
    html = "https://www.amd.com/en/corporate/newsroom"
    doc = Nokogiri::HTML(open(html))
    scraper_amd = []
    newsroom = doc.css(".view-content")
    
    newsroom.each do |news|
        scraper_amd << {
    :icon => news.css("div a img")[0].attribute('src').value,
    :title => news.css("h4 a").text.strip,
    :url => news.css("h4 a")[0].first),
    :date => news.css("div time").first.text.strip
    }
end
scraper_amd
end

def self.scrape_apple
    html = "https://www.apple.com/newsroom/"
    doc = Nokogiri::HTML(open(html))
    scraper_apple = []
    newsroom = doc.css(".content")
    
    newsroom.each do |news|
        scraper_apple << {
    :icon =  news.css("div li a div")[3].attribute('class').value,
    :title = news.css("p.tile-content-headline")[0].text.strip,
    :url = news.css(doc.css("main li a")[0].first,
    :date = news.css("div time").first.text.strip
    }
end
scraper_wcctech
end

def self.scrape_wcctech
    html = "https://wccftech.com/"
    doc = Nokogiri::HTML(open(html))
    scraper_wcctech = []
    newsroom = doc.css(".clearfix")

    newsroom.each do |news|
        scraper_wcctech << {
    :icon = news.css("h1 a img").attribute('src').value,
    :title = news.css("h2").first.text.strip,
    :url = news.css("main div a")[1].first,
    :date = news.css("div.meta")[0].text.strip
    }
end
scraper_wcctech
end

def self.scrape_microsoft
    html = "https://news.microsoft.com/category/press-releases/"
    doc = Nokogiri::HTML(open(html))
    scraper_microsoft = []
    newsroom = doc.css(".main-content")

    newsroom.each do |news|
        scraper_microsoft << {
    :icon = news.css("a img").attribute('src').value,
    :title = news.css(doc.css("main article div a")[0].text.strip,
    :url = news.css(doc.css("main article div a")[0].first,
    :date = news.css(doc.css("main article div")[1].text.strip
    }
end
scraper_microsoft
end
end