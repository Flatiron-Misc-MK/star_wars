class Films
    attr_accessor :title, :opening_crawl
    @@all = []
    def initialize(film)
        @film_hash = film
        self.get_title
        self.get_crawl
        @@all << self
    end
    def get_title
        @title = @film_hash['title']
    end
    def get_crawl
        @opening_crawl = @film_hash['opening_crawl']
    end
    def self.all
        @@all
    end
end



