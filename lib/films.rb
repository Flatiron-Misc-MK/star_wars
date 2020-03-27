class Films
    attr_acessor :title, :episode_id

    @@all = []

    def initialize(title, episode_id)
        @title = title
        @episode_id = episode_id
        @@all <<self
    end

    def self.all
        @@all
    end
end