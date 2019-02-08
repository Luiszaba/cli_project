#CLI Controller

class TechNews::CLI

    def call
        welcome
        menu
        goodbye
    end

    def welcome
        puts "Welcome to Tech News"
    end

    def news_stories
        puts "Lets take a quick look at whats available"
        @news = TechNews::Sources.today
        @news.each.with_index(1) do |news, i|
            puts "#{i} - #{title} - #{date}"
    end
end

    def menu
        input = nil
        puts "What would you like to read? If you don't know yet, type help"
        while input != "exit"
        input = gets.strip.downcase

        case input
        when "1"
            puts "Lets get a better look at what's going on over at Intel"
            puts "#{icon} - #{title} - #{url} #{date}"
        when "2"
            puts "Lets get a better look at whats going on with AMD"
            puts "#{icon} - #{title} - #{url} #{date}"
        when "3"
            puts "Lets get a better look at whats going on with NVIDIA"
            puts "#{icon} - #{title} - #{url} #{date}"
        when "4"
            puts "Lets get a better look at whats going on with APPLE"
            puts "#{icon} - #{title} - #{url} #{date}"
        when "5" 
            puts "Lets get a better look at whats going on with Microsoft"
            puts "#{icon} - #{title} - #{url} #{date}"
        when "6"
            puts "Lere's whats popular at WCC TECH"
            puts "#{icon} - #{title} - #{url} #{date}"
        when  "quit"
            goodbye
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