class Genre
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
        self.class.all << self
    end

    def songs
        Song.all.filter{|s| s.genre = self}
    end

    def artists
        Artist.all.filter{|a| a.genres.include?(self)}
    end
end