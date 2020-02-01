class Artist
    attr_accessor :name, :song, :artist


    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end


    def self.song_count
        Song.all.length
    end
end