class TechNews::News

    attr_accessor :title, :icon, :url

def self.today
    scrape_news
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
    doc = Nokogiri::HTML(open("#url"))

    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip

    news
end

def self.scrape_amd
    doc = Nokogiri::HTML(open("#url"))

    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip

    news
end

def self.scrape_apple
    doc = Nokogiri::HTML(open("#url"))

    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip

    news
end

def self.scrape_wcctech
    doc = Nokogiri::HTML(open("#url"))

    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip

    news
end

def self.scrape_microsoft
    doc = Nokogiri::HTML(open("#url"))

    news = self.new
    news.icon = doc.search().strip
    news.title = doc.search().text.strip
    news.url - doc.search().strip

    news
end
end
