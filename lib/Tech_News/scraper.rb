class TechNews::Scraper
#scrape for info to use to create sources

    def self.scrape_sources
#grab the info (call all helper methods here)
        scrape_intel
        scrape_amd
#pass the info to the source class to create a source


    end

    def self.scrape_intel

        
        TechNews::Sources.new_from_scraper(info)

    end

    def self.scrape_amd
    end
end