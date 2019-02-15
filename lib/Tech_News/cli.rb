#CLI Controller

class TechNews::CLI

    def call
        welcome
        menu
        goodbye
    end

    def welcome
        puts "Welcome to Tech News Daily!"
    end

    def news_stories
        puts "Lets take a quick look at whats available: "
        @news = TechNews::Sources.scrape_sources
        @news.each.with_index(1) do |news, i|
            puts "#{i}. #{news.title} #{news.date}"
    end
end

    def goodbye
    puts "Are you sure you want to leave?"
    input = gets.strip.downcase

    if input == "n"
        menu
    elsif input == "y"
        puts "Have a wonderful day!"
        exit
        end
    end

    def error
        puts "Look's like we hit a snag. Let's try that again shall we?"
    end

    def menu
        input = nil
        puts "What would you like to read?"
        puts "You can type any number between 1-5 for the most recent newsletter"
        puts "If you want to leave, press any number greater then 5 followed by "Y" for Yes or "N" for No."
        puts ""
        while input != "exit"
        input = gets.strip.downcase
        TechNews::Sources.scrape_sources

        case input
        when input = "1"
            puts "Lets get a better look at what's going on over at Intel"
            puts ""
            puts "- #{TechNews::Sources.all[0].title}"
 
        when input = "2"
            puts "Lets get a better look at whats going on with AMD"
            puts ""
            puts "- #{TechNews::Sources.all[1].title}"
 
        when input = "3"
            puts "Lets get a better look at whats going on with APPLE"
            puts ""
            puts "- #{TechNews::Sources.all[2].title}"
 
        when input = "4"
            puts "Lets get a better look at whats going on with MICROSOFT"
            puts ""
            puts "- #{TechNews::Sources.all[3].title}"

        when input = "5" 
            puts "Lets get a better look at whats going on with WCCTECH"
            puts ""
            puts "- #{TechNews::Sources.all[4].title}"
        when input = "quit"
            goodbye 
        when input = "help"
            news_stories
        else
            error
        end
    end
end
end