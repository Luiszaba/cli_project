##CLI Controller

class TechNews::CLI

    def call
        welcome
        menu
        goodbye
    end

    def welcome
        puts "Welcome to Tech News"
        #@news = TechNews::News.today
    end

    def news_stories
        puts "Lets take a quick look at everything"
    end


    def menu
        input = nil
        while input != "exit"
            puts "What would you like to read?"
        input = gets.strip.downcase
        
        case input
        when "1"
            puts "Lets get a better look at what's going on over at Intel"
        when "2"
            puts "Lets get a better look at whats going on with AMD"
        when "3"
            puts "Lets get a better look at whats going on with NVIDIA"
        when "4"
            puts "Lets get a better look at whats going on with APPLE"
        when "5"
            puts "Here's whats popular at WCC TECH"
        else news_stories
        end
    end
end

def goodbye
    puts "Return tomorrow for more Tech News"
end
end