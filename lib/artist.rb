class Artist
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @songs = []
        @genres = []
        self.class.all << self
    end

    def songs
        Song.all.filter{|s| s.artist == self}
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def genres
        songs.collect{|song| song.genre}.uniq
    end
end
