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
    doc = Nokogiri::HTML(open("https://newsroom.intel.com/"))

    doc.css().each do |news|
    newsroom = doc.css(".container").text

    news[newsroom.to_sym] = {
    news1 = self.new
    news1.icon = doc.css("div a img").attribute('src').value
    news1.title = doc.css("div.post-title").first.text.strip
    news1.url = doc.css("div.post-title").first.text.strip
    news1.date = doc.css(".post-timestamp").first.text
    news1
end


def self.scrape_amd
    doc = Nokogiri::HTML(open("https://www.amd.com/en/corporate/newsroom"))
    news2 = self.new
    news2.icon = doc.css("div a img")[0].attribute('src').value
    news2.title = doc.css("h4 a").text.strip
    news2.url = doc.css("h4 a")[0].first)
    news2.date = doc.css("div time").first.text.strip
end

def self.scrape_apple
    doc = Nokogiri::HTML(open("https://www.apple.com/newsroom/"))
    news3 = self.new
    news3.icon =  doc.css("div li a div")[3].attribute('class').value
    news3.title = doc.css("p.tile-content-headline")[0].text.strip
    news3.url = doc.css(doc.css("main li a")[0].first
    news3.date = doc.css("div time").first.text.strip
    news3
end

def self.scrape_wcctech
    doc = Nokogiri::HTML(open("https://wccftech.com/"))
    news4 = self.new
    news4.icon = doc.css("h1 a img").attribute('src').value
    news4.title = doc.css("h2").first.text.strip
    news4.url = doc.css("main div a")[1].first
    news4.date = doc.css("div.meta")[0].text.strip
    news4
end

def self.scrape_microsoft
    doc = Nokogiri::HTML(open("https://news.microsoft.com/category/press-releases/"))
    news5 = self.new
    news5.icon = doc.css("a img").attribute('src').value
    news5.title = doc.css(doc.css("main article div a")[0].text.strip
    news5.url = doc.css(doc.css("main article div a")[0].first
    news5.date = doc.css(doc.css("main article div")[1].text.strip
    news5
end
end
