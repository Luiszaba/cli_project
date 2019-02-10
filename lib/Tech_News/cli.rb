#CLI Controller

class TechNews::CLI

attr_accessor :title, :icon, :url, :date
attr_reader :intel_news, :amd_news, :m_news, :apple_news, :wcc_news

    def call
        TechNews::Scraper.scrape_sources


        welcome
        menu
        goodbye
    end

    def welcome
        puts "Welcome to Tech News Daily!"
    end

    def menu
        input = nil
        puts "What would you like to read? If you don't know yet, type help"
        while input != "exit"
        input = gets.strip.downcase

        case input

        when input = "1"
            puts "Lets get a better look at what's going on over at Intel"
            puts TechNews::Sources.all[0].title
        when input = "2"
            puts "Lets get a better look at whats going on with AMD"
            puts ""
        when input = "3"
            puts "Lets get a better look at whats going on with NVIDIA"
            puts "}"
        when input = "4"
            puts "Lets get a better look at whats going on with APPLE"
            puts ""
        when input = "5" 
            puts "Lets get a better look at whats going on with Microsoft"
            puts ""
        when input = "6"
            puts "Lere's whats popular at WCC TECH"
            puts ""
        when input = "quit"
            goodbye
        when input = "help"
            news_stories
        else
            error
        end
    end
end

def goodbye
    puts "Return tomorrow for more Tech News"
end

def error
    puts "Look's like we hit a snag."
    news_stories
end

def news_stories
    puts "Lets take a quick look at whats available:"
    @news = TechNews::Sources.scrape_sources
    @news.each.with_index(1) do |news, i|
        puts "#{i}. #{news.title} #{news.date}"
end
end

end