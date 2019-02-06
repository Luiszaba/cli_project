class TechNews::Deal

def self.today
    #I should return a bunch of instances of news
    puts <<-DOC.gsub /^\s*/, ''
    1. Intel did this
    2. AMD did this
    3. NVidia did this
    DOC

end
end
