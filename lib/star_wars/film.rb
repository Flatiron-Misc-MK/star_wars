class Film
    attr_accessor :title, :opening_crawl
    @@all = []


    def initialize(film)
        @title = film['title']
        @opening_crawl = film['opening_crawl']

        @@all << self
    end
    
   
    def self.all
        @@all
    end
end



