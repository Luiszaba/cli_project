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
        puts "Type 1 for Intel"
        puts "Type 2 for AMD"
        puts "Type 3 for NVIDIA"
        puts "Type 4 for APPLE"
        puts "Type 5 for MICROSOFT"
        puts "Type 6 for WCCTECH"
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
        when "2"
            puts "Lets get a better look at whats going on with AMD"
        when "3"
            puts "Lets get a better look at whats going on with NVIDIA"
        when "4"
            puts "Lets get a better look at whats going on with APPLE"
        when "5" 
            puts "Lets get a better look at whats going on with Microsoft"
        when "6"
            puts "Lere's whats popular at WCC TECH"    
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