##CLI Controller

class TechNews::CLI

    def call
        list_news
        menu
        goodbye
    end

    def list_news
        puts "Here's all the news fit to puts: "
        #@news = TechNews::News.today
    end

    def menu
        puts "Tech News"
        input = nil
        while input != "exit"
            puts "What would you like to read?"
        input = gets.strip
        
        case input
        when "1"
            puts "Lets get a better look at what's going on over at Intel"
        when "2"
            puts "Lets get a better look at whats going on with AMD"
        when "3"
            puts "Lets get a better look at whats going on with NVIDIA"
        when "4"
            puts "Ain't nobody got time fu dat!"
        else "list_news"
            list_news
        end
    end
end

def goodbye
    puts "Return tomorrow for more Tech News"
end
end