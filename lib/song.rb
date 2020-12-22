class Song
    attr_accessor :artist, :genre
    attr_reader = :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title, artist, genre)
        @title = title
        @artist = artist
        @genre = genre
        self.class.all << self
    end
end
