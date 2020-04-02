class Films
    attr_accessor :title, :opening_crawl
   

    @@all = []

    def initialize(title, opening_crawl)
        @title = title
        @opening_crawl
        @@all <<self
    end
    
    def self.all
        @@all
    end
    

    
end