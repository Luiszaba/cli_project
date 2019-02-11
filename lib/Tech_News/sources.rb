require 'nokogiri'
require 'open-uri'
require 'pry'



class TechNews::Sources

    attr_accessor :icon, :title, :url, :date, :news

    @@all = []

def initialize

end

def self.all
    @@all
end

def self.wipe
    @@all.clear
end

def self.save
    @@all << self
end

def self.scrape_sources
   @@all << scrape_intel
   @@all << scrape_amd
   @@all << scrape_apple
   @@all << scrape_microsoft
   @@all << scrape_wcctech
   @@all

   # Goal is to itterate through @@all and split the instances of web pages
end

def self.scrape_intel
    html = "https://newsroom.intel.com/"
    news = Nokogiri::HTML(open(html))
    intel_news = self.new
        intel_news.icon = news.css("div a img").attribute('src').value
        intel_news.title = news.css("div.post-title").first.text
        intel_news.url = news.css("div.post-title").first.attr("href")
        intel_news.date = news.css(".post-timestamp").first.text 
    intel_news

    #url link broken

end

def self.scrape_amd
    html = "https://www.amd.com/en/corporate/newsroom"
    news = Nokogiri::HTML(open(html))
    amd_news = self.new
        amd_news.icon = news.css("div a img")[0].attribute('src').value
        amd_news.title = news.css("h4 a").first.text
        amd_news.url = news.css("h4 a")[0].first
        amd_news.date = news.css("div time").first.text
    amd_news
end

def self.scrape_apple
    html = "https://www.apple.com/newsroom/"
    news = Nokogiri::HTML(open(html))
    apple_news = self.new
        apple_news.icon = news.css("div li a div")[3].attribute('class').value
        apple_news.title = news.css("p.tile-content-headline")[0].text
        apple_news.url = news.css("main li a")[0].first
        apple_news.date = news.css("div time").first.text
    apple_news
end

def self.scrape_wcctech
    html = "https://wccftech.com/"
    news = Nokogiri::HTML(open(html))
    wcc_news = self.new
        wcc_news.icon = news.css("h1 a img").attribute('src').value
        wcc_news.title = news.css("h2").first.text
        wcc_news.url = news.css("main div a")[1].first
        wcc_news.date = news.css("div.meta")[0].text
    wcc_news

end

def self.scrape_microsoft
    html = "https://news.microsoft.com/category/press-releases/"
    news = Nokogiri::HTML(open(html))
    m_news = self.new
        m_news.icon = news.css("a img").attribute('src').value
        m_news.title = news.css("main article div a")[0].text.strip
        m_news.url = news.css("main article div a")[0].first
        m_news.date = news.css("main article div")[1].text
    m_news
end
end
